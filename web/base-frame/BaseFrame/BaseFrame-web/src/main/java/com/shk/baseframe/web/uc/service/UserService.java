package com.shk.baseframe.web.uc.service;

import com.shk.baseframe.common.cache.token.TokenCache;
import com.shk.baseframe.common.character.DesEncrypt;
import com.shk.baseframe.common.character.StringUtils;
import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfo;
import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfoExample;
import com.shk.baseframe.common.dbmapper.uc.mapper.UcUserInfoMapper;
import com.shk.baseframe.common.utils.*;
import com.shk.baseframe.web.uc.domain.UserContants;
import com.shk.baseframe.web.uc.domain.UserInfo;
import com.shk.baseframe.web.uc.mapper.UserInfoMapper;
import com.shk.baseframe.web.utils.JsonResultContants;
import com.shk.baseframe.web.utils.MailSendUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 用户操作实现类
 */
@Service("userService")
public class UserService {

    @Autowired
    private UcUserInfoMapper ucUserInfoMapper;//程序运行起来之后就没问题了

    @Autowired
    private UserInfoMapper userMapper;

    @Autowired
    TokenCache tokenCache;

    @Autowired
    MailSendUtils mailSendUtils;

    Logger logger = Logger.getLogger(UserService.class.getName());

    public JsonResult loginUser(String username, String password) {
        JsonResult result = null;
        UcUserInfo ucUserinfo = login(username, password);
        if (ucUserinfo == null) {
            result = new JsonResult(JsonResultContants.LOGIN_USERNAME_PASSWORD_ERROR, JsonResultContants.LOGIN_USERNAME_PASSWORD_ERROR_MSG);
        } else if (ucUserinfo.getStatus().equals(UserContants.STATE_FORBIDDEN)) {
            result = new JsonResult(JsonResultContants.USER_STATE_FORBIDDEN, JsonResultContants.USER_STATE_FORBIDDEN_MSG);
        } else if (ucUserinfo.getStatus().equals(UserContants.STATE_FREEZE)) {
            result = new JsonResult(JsonResultContants.USER_STATE_FREEZE, JsonResultContants.USER_STATE_FREEZE_MSG);
        } else {
            String token = tokenCache.addToken(ucUserinfo.getUserId());
            result = new JsonResult();
            result.setStatusCode(JsonResultContants.LOGIN_SUCCESS);
            result.setStatusMsg(JsonResultContants.LOGIN_SUCCESS_MSG);
            result.setToken(token);
            ucUserinfo.setPassword(null);
            result.setContentToJsonString(ucUserinfo);
        }
        return result;
    }

    public UcUserInfo login(String username, String password) {
        UcUserInfo ucUserInfo = null;
        UcUserInfoExample example = new UcUserInfoExample();
        example.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(DesEncrypt.encrypt(password, UserContants.PASSWORD_DES));
        List<UcUserInfo> ucUserInfos = ucUserInfoMapper.selectByExample(example);
        if (ucUserInfos != null && ucUserInfos.size() > 0) {
            ucUserInfo = ucUserInfos.get(0);
        }
        return ucUserInfo;
    }


    public JsonResult regUser(UserInfo userInfo) {
        JsonResult result = null;
        UcUserInfo userCheck = regCheck(userInfo);
        if (userCheck != null) {
            if (userCheck.getEmail().equals(userInfo.getEmail())) {
                result = new JsonResult(JsonResultContants.REG_EMAIL_EXSIT, JsonResultContants.REG_EMAIL_EXSIT_MSG);
            } else if (userCheck.getUsername().equals(userInfo.getUsername())) {
                result = new JsonResult(JsonResultContants.REG_USERNAME_EXSIT, JsonResultContants.REG_USERNAME_EXSIT_MSG);
            }
        } else {
            add(userInfo);
            result = new JsonResult(JsonResultContants.REG_SUCCESS, JsonResultContants.REG_SUCCESS_MSG);
        }
        return result;

    }


    public UcUserInfo regCheck(UserInfo userInfo) {
        UcUserInfo ucUserInfo = null;
        UcUserInfoExample example = new UcUserInfoExample();
        example.or(example.createCriteria().andEmailEqualTo(userInfo.getEmail()));
        example.or(example.createCriteria().andUsernameEqualTo(userInfo.getUsername()));
        List<UcUserInfo> ucUserInfos = ucUserInfoMapper.selectByExample(example);
        if (ucUserInfos != null && ucUserInfos.size() > 0) {
            ucUserInfo = ucUserInfos.get(0);
        }
        return ucUserInfo;
    }


    public JsonResult findPasswordUser(String email) {
        JsonResult result = null;
        UcUserInfo userCheck = findPasswordCheck(email);
        if (userCheck != null) {
            String password = DesEncrypt.decrypt(userCheck.getPassword(), UserContants.PASSWORD_DES);
            try {
                mailSendUtils.sendFindPasswordMail(email, password);
                result = new JsonResult(JsonResultContants.FIND_PASSWORD_SUCCESS, JsonResultContants.FIND_PASSWORD_SUCCESS_MSG);
            } catch (Exception e) {
                logger.error(e);
                result = new JsonResult(JsonResultContants.FIND_PASSWORD_FAIL, JsonResultContants.FIND_PASSWORD_FAIL_MSG);
            }
        } else {
            result = new JsonResult(JsonResultContants.FIND_PASSWORD_EMAIL_NOT_EXSIT, JsonResultContants.FIND_PASSWORD_EMAIL_NOT_EXSIT_MSG);
        }
        return result;

    }


    public UcUserInfo findPasswordCheck(String email) {
        UcUserInfo ucUserInfo = null;
        UcUserInfoExample example = new UcUserInfoExample();
        example.createCriteria().andEmailEqualTo(email);
        List<UcUserInfo> ucUserInfos = ucUserInfoMapper.selectByExample(example);
        if (ucUserInfos != null && ucUserInfos.size() > 0) {
            ucUserInfo = ucUserInfos.get(0);
        }
        return ucUserInfo;
    }


    public UcUserInfo getUserInfo(String userId) {
        return ucUserInfoMapper.selectByPrimaryKey(userId);
    }


    public JQGridPage getUserInfoList(JQGridPage pageJQGrid) {
//        UcUserInfoExample example = getUcUserInfoExample(pageJQGrid.getFilters());
        pageJQGrid.initJqGrid();
        List<UcUserInfo> ucUserInfoList = ucUserInfoMapper.getUserListJQgrid(pageJQGrid);
        for (UcUserInfo user : ucUserInfoList) {
            user.setPassword(DesEncrypt.decrypt(user.getPassword(), UserContants.PASSWORD_DES));
        }
        pageJQGrid.setDataRows(ucUserInfoList);
        Integer count = ucUserInfoMapper.getUserListCountJQgrid(pageJQGrid);
        if (count != null) {
            pageJQGrid.setRecords(count);
        }
        return pageJQGrid;
    }

    public UcUserInfoExample getUcUserInfoExample(JQGridPage pageJQGrid) {
        UcUserInfoExample example = new UcUserInfoExample();
        if (StringUtils.isNotBlank(pageJQGrid.getSidx()) && StringUtils.isNotBlank(pageJQGrid.getSord())) {
            if (pageJQGrid.getSord().equals(JQGridContants.ORDER_BY_ASC)) {
                example.setOrderByClause(" ORDER BY " + pageJQGrid.getSidx() + " ASC");
            } else {
                example.setOrderByClause(" ORDER BY " + pageJQGrid.getSidx() + " DESC");
            }
        }

        if (StringUtils.isNotBlank(pageJQGrid.getFilters())) {
            JQGridFilter jqGridFilter = JsonUtils.parseObject(pageJQGrid.getFilters(), JQGridFilter.class);
            for (JQGridRules rule : jqGridFilter.getRules()) {
                if (jqGridFilter.getGroupOp().equalsIgnoreCase(JQGridContants.FILTER_GROUPOPS_AND)) {

                    if (rule.getField().equals("username")) {
                        if (rule.getOp().equals(JQGridContants.FILTER_OPER_EQ)) {
                            example.createCriteria().andUsernameEqualTo(rule.getData());
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NE)) {
                            example.createCriteria().andUsernameNotEqualTo(rule.getData());
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_CN)) {
                            example.createCriteria().andUsernameLike("%" + rule.getData() + "%");
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NC)) {
                            example.createCriteria().andUsernameNotLike(rule.getData());
                        }
                    } else if (rule.getField().equals("email")) {
                        if (rule.getOp().equals(JQGridContants.FILTER_OPER_EQ)) {
                            example.createCriteria().andEmailEqualTo(rule.getData());
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NE)) {
                            example.createCriteria().andEmailNotEqualTo(rule.getData());
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_CN)) {
                            example.createCriteria().andEmailLike("%" + rule.getData() + "%");
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NC)) {
                            example.createCriteria().andEmailNotLike(rule.getData());
                        }
                    } else if (rule.getField().equals("mobilePhone")) {
                        if (rule.getOp().equals(JQGridContants.FILTER_OPER_EQ)) {
                            example.createCriteria().andMobilePhoneEqualTo(rule.getData());
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NE)) {
                            example.createCriteria().andMobilePhoneNotEqualTo(rule.getData());
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_CN)) {
                            example.createCriteria().andMobilePhoneLike("%" + rule.getData() + "%");
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NC)) {
                            example.createCriteria().andMobilePhoneNotLike(rule.getData());
                        }
                    }
                } else if (jqGridFilter.getGroupOp().equalsIgnoreCase(JQGridContants.FILTER_GROUPOPS_OR)) {
                    if (rule.getField().equals("username")) {
                        if (rule.getOp().equals(JQGridContants.FILTER_OPER_EQ)) {
                            example.or(example.createCriteria().andUsernameEqualTo(rule.getData()));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NE)) {
                            example.or(example.createCriteria().andUsernameNotEqualTo(rule.getData()));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_CN)) {
                            example.or(example.createCriteria().andUsernameLike("%" + rule.getData() + "%"));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NC)) {
                            example.or(example.createCriteria().andUsernameNotLike(rule.getData()));
                        }
                    } else if (rule.getField().equals("email")) {
                        if (rule.getOp().equals(JQGridContants.FILTER_OPER_EQ)) {
                            example.or(example.createCriteria().andEmailEqualTo(rule.getData()));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NE)) {
                            example.or(example.createCriteria().andEmailNotEqualTo(rule.getData()));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_CN)) {
                            example.or(example.createCriteria().andEmailLike("%" + rule.getData() + "%"));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NC)) {
                            example.or(example.createCriteria().andEmailNotLike(rule.getData()));
                        }
                    } else if (rule.getField().equals("mobilePhone")) {
                        if (rule.getOp().equals(JQGridContants.FILTER_OPER_EQ)) {
                            example.or(example.createCriteria().andMobilePhoneEqualTo(rule.getData()));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NE)) {
                            example.or(example.createCriteria().andMobilePhoneNotEqualTo(rule.getData()));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_CN)) {
                            example.or(example.createCriteria().andMobilePhoneLike("%" + rule.getData() + "%"));
                        } else if (rule.getOp().equals(JQGridContants.FILTER_OPER_NC)) {
                            example.or(example.createCriteria().andMobilePhoneNotLike(rule.getData()));
                        }
                    }
                }
            }
        }
        return example;
    }


    public void update(UcUserInfo userInfo) {
        if (StringUtils.isNotBlank(userInfo.getPassword())) {
            userInfo.setPassword(DesEncrypt.encrypt(userInfo.getPassword(), UserContants.PASSWORD_DES));
        }
        ucUserInfoMapper.updateByPrimaryKeySelective(userInfo);
    }


    public void delete(String userId) {
        ucUserInfoMapper.deleteByPrimaryKey(userId);
    }


    public void add(UcUserInfo userInfo) {
        userInfo.setPassword(DesEncrypt.encrypt(userInfo.getPassword(), UserContants.PASSWORD_DES));
        userInfo.setUserId(StringUtils.getUUID());
        userInfo.setCreateTime(new Date());

        ucUserInfoMapper.insert(userInfo);
    }
}

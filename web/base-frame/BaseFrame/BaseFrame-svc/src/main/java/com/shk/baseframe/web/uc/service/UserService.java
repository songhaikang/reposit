package com.shk.baseframe.web.uc.service;

import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfo;
import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfoExample;
import com.shk.baseframe.common.dbmapper.uc.mapper.UcUserInfoMapper;
import com.shk.baseframe.common.character.StringUtils;
import com.shk.baseframe.web.cache.token.TokenCache;
import com.shk.baseframe.web.uc.domain.UserInfo;
import com.shk.baseframe.web.uc.mapper.UserInfoMapper;
import com.shk.baseframe.web.utils.JsonResult;
import com.shk.baseframe.web.utils.JsonResultContants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


    public JsonResult loginUser(String username, String password) {
        JsonResult result = null;
        UcUserInfo ucUserinfo = login(username, password);
        if (ucUserinfo == null) {
            result = new JsonResult(JsonResultContants.LOGIN_USERNAME_PASSWORD_ERROR, JsonResultContants.LOGIN_USERNAME_PASSWORD_ERROR_MSG);
        } else if (ucUserinfo.getState().equals(JsonResultContants.USER_STATE_FORBIDDEN)) {
            result = new JsonResult(JsonResultContants.USER_STATE_FORBIDDEN, JsonResultContants.USER_STATE_FORBIDDEN_MSG);
        } else if (ucUserinfo.getState().equals(JsonResultContants.USER_STATE_NORMAL)) {
            String token = tokenCache.addToken(ucUserinfo.getUserId());
            result = new JsonResult();
            result.setStatusCode(JsonResultContants.LOGIN_SUCCESS);
            result.setStatusMsg(JsonResultContants.LOGIN_SUCCESS_MSG);
            result.setToken(token);
        }
        return result;
    }
    
    public UcUserInfo login(String username, String password) {
        UcUserInfo ucUserInfo = null;
        UcUserInfoExample example = new UcUserInfoExample();
        example.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(password);
        List<UcUserInfo> ucUserInfos = ucUserInfoMapper.selectByExample(example);
        if (ucUserInfos != null && ucUserInfos.size() > 0) {
            ucUserInfo = ucUserInfos.get(0);
        }
        return ucUserInfo;
    }

    public UcUserInfo regCheck(UserInfo userInfo){
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

    
    public UcUserInfo getUserInfo(String userId) {
        return ucUserInfoMapper.selectByPrimaryKey(userId);
    }

    
    public List<UcUserInfo> getUserInfoList(UcUserInfo ucUserInfo) {
        UcUserInfoExample example = new UcUserInfoExample();
        List<UcUserInfo> ucUserInfoList = ucUserInfoMapper.selectByExample(example);
        return ucUserInfoList;
    }

    
    public void update(UcUserInfo userInfo) {
        ucUserInfoMapper.updateByPrimaryKey(userInfo);
    }

    
    public void delete(String userId) {
        ucUserInfoMapper.deleteByPrimaryKey(userId);
    }

    
    public void add(UcUserInfo userInfo) {
        userInfo.setState(JsonResultContants.USER_STATE_NORMAL);
        userInfo.setUserId(StringUtils.getUUID());
        ucUserInfoMapper.insert(userInfo);
    }
}

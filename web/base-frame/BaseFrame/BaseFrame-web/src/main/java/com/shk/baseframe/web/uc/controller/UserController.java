package com.shk.baseframe.web.uc.controller;

import com.shk.baseframe.common.cache.verifycode.AccreditCodeCache;
import com.shk.baseframe.common.cache.verifycode.VerifyCodeCache;
import com.shk.baseframe.common.utils.JQGridContants;
import com.shk.baseframe.common.utils.JQGridPage;
import com.shk.baseframe.common.utils.JsonResult;
import com.shk.baseframe.web.uc.domain.UserInfo;
import com.shk.baseframe.web.uc.service.UserService;
import com.shk.baseframe.web.utils.JsonResultContants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * 用户管理
 */
@Controller//声明为控制器（使用Controller将该类标记为spring mvc解析的类，类似Struts中的Action）
public class UserController extends SimpleFormController {

    @Autowired
    UserService userService;

    @Autowired
    VerifyCodeCache verifyCodeCache;

    @Autowired
    AccreditCodeCache accreditCodeCache;


    @InitBinder
    protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
        DateFormat fmt = new SimpleDateFormat("yyyy-mm-dd");
        CustomDateEditor dateEditor = new CustomDateEditor(fmt, true);
        binder.registerCustomEditor(Date.class, dateEditor);
        super.initBinder(request, binder);
    }


    @ResponseBody
    @RequestMapping(value = "/anonymous/uc/loginUserWithVerifyCode")
    public JsonResult loginUserWithVerifyCode(String username, String password, String codeKey, String codeContent) {
        JsonResult result = null;
        if (verifyCodeCache.checkVerifyCode(codeKey, codeContent)) {//验证码正确
            result = userService.loginUser(username, password);
        } else {
            result = new JsonResult(JsonResultContants.VERIFY_CODE_FAIL, JsonResultContants.VERIFY_CODE_FAIL_MSG);
        }
        return result;
    }


    @ResponseBody
    @RequestMapping(value = "/anonymous/uc/loginUserWithAccreditCode")
    public JsonResult loginUserWithAccreditCode(String username, String password, String accreditCode) {
        JsonResult result = null;
        if (accreditCodeCache.checkAccreditCode(accreditCode)) {
            result = userService.loginUser(username, password);
        } else {
            result = new JsonResult(JsonResultContants.ACCREDIt_CODE_FAIL, JsonResultContants.ACCREDIt_CODE_FAIL_MSG);
        }
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "/anonymous/uc/regUser")
    public JsonResult regUser(UserInfo userInfo, String codeKey, String codeContent) {
        JsonResult result = null;
        if (verifyCodeCache.checkVerifyCode(codeKey, codeContent)) {//验证码正确
            result = userService.regUser(userInfo);
        } else {
            result = new JsonResult(JsonResultContants.VERIFY_CODE_FAIL, JsonResultContants.VERIFY_CODE_FAIL_MSG);
        }
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "/anonymous/uc/findPasswordUser")
    public JsonResult findPasswordUser(String email, String codeKey, String codeContent){
        JsonResult result = null;
        if (verifyCodeCache.checkVerifyCode(codeKey, codeContent)) {//验证码正确
            result = userService.findPasswordUser(email);
        } else {
            result = new JsonResult(JsonResultContants.VERIFY_CODE_FAIL, JsonResultContants.VERIFY_CODE_FAIL_MSG);
        }
        return result;
    }


    @ResponseBody
    @RequestMapping(value = "/admin/uc/getUserList")
    public JQGridPage getUserList(JQGridPage pageJQGrid) {
        return userService.getUserInfoList(pageJQGrid);
    }

    @ResponseBody
    @RequestMapping(value = "/admin/uc/editUserInfo")
    public void editUserInfo(UserInfo userInfo) {
        if (userInfo.getOper().equals(JQGridContants.EDIT_OPER_ADD)) {
            userService.add(userInfo);
        } else if (userInfo.getOper().equals(JQGridContants.EDIT_OPER_UPDATE)) {
            userInfo.setUserId(userInfo.getId());
            userService.update(userInfo);
        } else if (userInfo.getOper().equals(JQGridContants.EDIT_OPER_DEL)) {
            userService.delete(userInfo.getId());
        }


    }




}
package com.shk.baseframe.demo.uc.controller;


import com.shk.baseframe.api.uc.domain.UcUserInfo;
import com.shk.baseframe.demo.uc.domain.UserConstants;
import com.shk.baseframe.demo.uc.domain.UserInfo;
import com.shk.baseframe.demo.uc.service.UserService;
import com.shk.baseframe.demo.utils.JQGridContants;
import com.shk.baseframe.demo.utils.JsonResult;
import com.shk.baseframe.demo.utils.cache.token.TokenCache;
import com.shk.baseframe.demo.utils.PageJQGrid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


//声明为控制器（使用Controller将该类标记为spring mvc解析的类，类似Struts中的Action）
@Controller
@RequestMapping("/uc")
public class UserController extends SimpleFormController {

    @Autowired
    UserService userService;


//    @InitBinder
//    public void initBinder(WebDataBinder binder) {
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
//        dateFormat.setLenient(false);
//        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
//    }

    @InitBinder
    protected void initBinder(HttpServletRequest request,
                              ServletRequestDataBinder binder) throws Exception {
        DateFormat fmt = new SimpleDateFormat("yyyy-mm-dd");
        CustomDateEditor dateEditor = new CustomDateEditor(fmt, true);
        binder.registerCustomEditor(Date.class, dateEditor);
        super.initBinder(request, binder);
    }


    @RequestMapping(value = "/login")
    public ModelAndView login(String username, String password) {
        UcUserInfo ucUserinfo = userService.login(username, password);
        String url = "/web/demo_show_msg.jsp", key = "showMsg", value = "登录失败：" + username;
        if (ucUserinfo != null) {
            url = "/web/demo_show_msg.jsp";
            key = "showMsg";
            value = "登录成功：" + username;
        }
        ModelAndView mv = new ModelAndView(url, key, value);
        return mv;
    }

    @ResponseBody
    @RequestMapping(value = "/loginUser")
    public JsonResult loginUser(String username, String password) {
        JsonResult result = null;
        UcUserInfo ucUserinfo = userService.login(username, password);
        if (ucUserinfo == null) {
            result = new JsonResult("用户名或者密码错误！", false);
        } else if (ucUserinfo.getState().equals(UserConstants.USER_STATE_FORBIDDEN)) {
            result = new JsonResult("用户被禁用！", false);
        } else if (ucUserinfo.getState().equals(UserConstants.USER_STATE_NORMAL)) {
            String token = TokenCache.addToken(ucUserinfo.getUserId());
            result = new JsonResult(token, true);
        }
        return result;
    }

    @ResponseBody
    @RequestMapping(value = "/regUser")
    public JsonResult regUser(UserInfo userInfo) {
        JsonResult result = null;
        UcUserInfo userCheck = userService.regCheck(userInfo);
        if (userCheck != null) {
            if (userCheck.getEmail().equals(userInfo.getEmail())) {
                result = new JsonResult("邮箱已经存在！", false);
            } else if (userCheck.getUsername().equals(userInfo.getUsername())) {
                result = new JsonResult("用户名已经存在！", false);
            }
        } else {
            userService.add(userInfo);
            result = new JsonResult("注册成功！", true);
        }
        return result;
    }


    @ResponseBody
    @RequestMapping(value = "/getUserList")
    public PageJQGrid getUserList(PageJQGrid pageJQGrid) {
        UcUserInfo ucUserInfo = new UcUserInfo();
        pageJQGrid.setDataRows(userService.getUserInfoList(ucUserInfo));
        return pageJQGrid;
    }

    @ResponseBody
    @RequestMapping(value = "/editUserInfo")
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
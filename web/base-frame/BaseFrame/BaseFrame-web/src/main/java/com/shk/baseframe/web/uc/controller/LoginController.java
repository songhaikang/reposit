package com.shk.baseframe.web.uc.controller;


import com.shk.baseframe.api.uc.domain.LoginUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//声明为控制器（使用Controller将该类标记为spring mvc解析的类，类似Struts中的Action）
@Controller
public class LoginController {

    @RequestMapping(value = "login")//处理请求，多处理配置如：@RequestMapping({"/","/home"})处理“/”或“/home”路径的请求
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response, LoginUser loginUser) {
        String username = loginUser.getUsername();
        //登录成功之后跳转到：/jsp/index/index.jsp
        ModelAndView mv = new ModelAndView("/index/index", "showMsg", "LOGIN SUCCESS, " + username);
        return mv;
    }
}
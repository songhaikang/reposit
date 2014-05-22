package com.shk.baseframe.web.utils;

/**
 * Created by shk on 14-5-19.
 */
public class JsonResultContants {


    public final static String TOKEN_TIME_OUT = "TOKEN_TIME_OUT";
    public final static String TOKEN_TIME_OUT_MSG = "登录信息已经过期，请重新登录！";

    public final static String VERIFY_CODE_SUCESS = "VERIFY_CODE_SUCESS";
    public final static String VERIFY_CODE_SUCESS_MSG = "验证码正确！";
    public final static String VERIFY_CODE_FAIL = "VERIFY_CODE_FAIL";
    public final static String VERIFY_CODE_FAIL_MSG = "验证码不正确！";


    public final static String LOGIN_USERNAME_PASSWORD_ERROR = "LOGIN_USERNAME_PASSWORD_ERROR";
    public final static String LOGIN_USERNAME_PASSWORD_ERROR_MSG = "用户名或密码错误！";
    public final static String LOGIN_SUCCESS = "LOGIN_SUCCESS";
    public final static String LOGIN_SUCCESS_MSG = "登录成功！";

    public final static String USER_STATE_NORMAL = "USER_STATE_NORMAL";//正常状态
    public final static String USER_STATE_FORBIDDEN = "USER_STATE_FORBIDDEN";//禁用状态
    public final static String USER_STATE_FORBIDDEN_MSG = "用户被禁用！";//禁用状态

    public final static String REG_USERNAME_EXSIT = "REG_USERNAME_EXSIT";
    public final static String REG_USERNAME_EXSIT_MSG = "用户名已经存在！";
    public final static String REG_EMAIL_EXSIT = "REG_EMAIL_EXSIT";
    public final static String REG_EMAIL_EXSIT_MSG = "邮箱已经存在！";
    public final static String REG_SUCCESS = "REG_SUCCESS";
    public final static String REG_SUCCESS_MSG = "注册成功！";


}

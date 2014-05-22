package com.shk.baseframe.demo.demo.interceptor;


import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-18
 * Time: 下午10:13
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class ControlInterceptor extends HandlerInterceptorAdapter {

    /**
     * 拦截处理
     *
     * @param request  请求信息
     * @param response 响应信息
     * @param handler  代理
     * @return true：未通过拦截器，不再继续往下走，false：通过了拦截器，将会继续往下走
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String token = request.getParameter("token");
        System.out.println("Token 的值为：" + token);
        // 未登录
//        if (null == token) {
//            PrintWriter out = response.getWriter();
//            StringBuilder builder = new StringBuilder();
//            builder.append("11111");
//            builder.append("<script type=\"text/javascript\" charset=\"UTF-8\">");
//            builder.append("alert(\"本系统需要您登录后才能使用\");");
//            builder.append("window.top.location.href=\"");
//            builder.append(request.getContextPath());
//            builder.append("/user/tologin\";</script>");
//            out.print(builder.toString());
//            out.close();
//            return false;
//        }
//        return super.preHandle(request, response, handler);
        return true;
    }
}

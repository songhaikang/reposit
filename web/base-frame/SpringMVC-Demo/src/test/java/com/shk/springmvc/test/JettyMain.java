package com.shk.springmvc.test;


import org.mortbay.jetty.Connector;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.bio.SocketConnector;
import org.mortbay.jetty.webapp.WebAppContext;

/**
 *
 */
public class JettyMain {
    public static void main(String[] args) throws Exception {
        //配置访问路径如http://localhost:8080/SpringMVC/index.jsp的服务器
        Server jettyServer = new Server();
        SocketConnector conn = new SocketConnector();
        conn.setPort(8081);//启动的服务器端口号
        jettyServer.setConnectors(new Connector[]{conn});

        WebAppContext wah = new WebAppContext();
        wah.setContextPath("/SpringMVC");//项目名称
        wah.setWar("src/main/webapp");//web目录
        jettyServer.setHandler(wah);
        jettyServer.start();
    }



}

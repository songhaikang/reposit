package com.shk.baseframe.web.test;


import org.mortbay.jetty.Connector;
import org.mortbay.jetty.Server;
import org.mortbay.jetty.bio.SocketConnector;
import org.mortbay.jetty.webapp.WebAppContext;

/**
 *
 */
public class JettyMainDemo {
    public static void main(String[] args) throws Exception {
        //配置访问路径如http://localhost:8081/BaseFrame-demo/index.jsp的服务器
        Server jettyServer = new Server();
        SocketConnector conn = new SocketConnector();
        conn.setPort(8080);//启动的服务器端口号
        jettyServer.setConnectors(new Connector[]{conn});

        WebAppContext wah = new WebAppContext();
        wah.setContextPath("/BaseFrame-demo");//项目名称
        wah.setWar("src/main/webapp");//web目录
//        wah.setWar("BaseFrame-web/src/main/webapp");//如果没有配置JettyMain--> Edit Configurations...-->Working directory 则需使用该路径
        jettyServer.setHandler(wah);
        jettyServer.start();
    }


}

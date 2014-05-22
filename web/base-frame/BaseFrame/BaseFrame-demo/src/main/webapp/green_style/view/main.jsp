<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>黑天鹅网站后台管理系统</title>
    <META http-equiv=Content-Type content="text/html; charset=UTF-8">
    <!--显示在地址栏开头出的图标-->
    <Link href="<%=path%>/green_style/resources/images/com/bss.ico" rel="Shortcut Icon">
    <link href="URL" rel="relationship">
    <link href="URL" rev="relationship">


</head>
<%--  <%--%>
<%-- 	 if(request.getSession().getAttribute("login")==null){--%>
<%-- 		 %>--%>
<%-- 		 <script>--%>
<%-- 		 	window.location.href="../../../view/menu/login.jsp";--%>
<%-- 		 </script>--%>
<%-- 		 <%--%>
<%-- 	 }--%>
<%--  %>--%>
<frameset rows="61,*,24" cols="*" framespacing="0" frameborder="no" border="0">
    <frame src="<%=path %>/green_style/view/top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame"/>
    <frameset cols="188,*" framespacing="0" frameborder="no" border="0">
        <frame src="<%=path %>/green_style/view/function_panel.jsp"/>
        <frame src="<%=path %>/green_style/view/homepage.jsp" name="main"/>
    </frameset>
    <frame src="<%=path %>/green_style/view/down.jsp" name="bottomFrame" scrolling="no" noresize="noresize"
           id="bottomFrame"/>
</frameset>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>企业信息管理系统</title>
    <%
        String path = request.getContextPath();
    %>

</head>

<frameset rows="98,*,8" frameborder="no" border="0" framespacing="0">
  <frame src="<%=path%>/blue_style/view/top.html" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
  <frame src="<%=path%>/blue_style/view/center.html" name="mainFrame" id="mainFrame" />
  <frame src="<%=path%>/blue_style/view/down.html" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" />
</frameset>
<noframes><body>
</body>
</noframes></html>

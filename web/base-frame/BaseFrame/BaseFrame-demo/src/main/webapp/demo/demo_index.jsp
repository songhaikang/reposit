<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>框架示例</title>
    <%
        String serverPath = "http://" + request.getServerName() + ":" + request.getServerPort();
        String path = serverPath + request.getContextPath();
    %>
</head>
<body>
<br>

<h2>框架测试页</h2>
<br>

<div>
    <a href="<%=path%>/blue_style/view/login.jsp" target="_blank">进入蓝色风格管理系统</a> <br><br>
    <a href="<%=path%>/green_style/view/login.jsp" target="_blank">进入绿色风格登录画面</a> <br><br>
    <a href="<%=path%>/green_style/view/main.jsp" target="_blank">进入绿色风格管理系统</a> <br><br>
    <a href="<%=path%>/bootstrap/view/login.jsp" target="_blank">进入BootStrap风格管理系统</a><br><br>
    <a href="<%=path%>/bootstrap/example/index.html" target="_blank">进入BootStrap风格示例系统</a><br><br>
    <a href="<%=path%>/demo/code_img.jsp" target="_blank">验证码案例</a>
    <br>
    <hr>

    提交信息：
    <form action="demo/show.do" method="get">
        <input type="text" name="username">
        <input type="submit" value="SUBMIT">
    </form>
    <br>
    <hr>

    新增信息：
    <form action="demo/addUser.do" method="post">
        ID：<input type="text" name="userId"><br>
        用户名：<input type="text" name="username"> <br>
        密码：<input type="password" name="password"> <br>
        年龄：<input type="text" name="age"> <br>
        <input type="submit" value="SUBMIT">
    </form>
    <br>
    <hr>

    根据主键查询信息：
    <form action="demo/getUserById.do" method="get">
        ID：<input type="text" name="userId"><br>
        <input type="submit" value="SUBMIT">
    </form>
    <br>
    <hr>

    文件上传测试：
    <form action="demo/upload.do" enctype="multipart/form-data" method="post">
        选择文件：<input type="file" name="file"/><br>
        <input type="submit" value="SUBMIT">
    </form>
    <br>
    <hr>

</div>
</body>
</html>
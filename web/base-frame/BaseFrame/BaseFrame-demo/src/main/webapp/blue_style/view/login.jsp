<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>企业信息管理系统_用户登录</title>

    <%
        String serverPath = "http://" + request.getServerName() + ":" + request.getServerPort();
        String path = serverPath + request.getContextPath();
    %>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #016aa9;
            overflow: hidden;
        }

        .STYLE1 {
            color: #000000;
            font-size: 12px;
        }

        -->
    </style>
</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <table width="962" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="235" background="<%=path%>/blue_style/resources/images/login/login_03.gif">&nbsp;</td>
                </tr>
                <tr>
                    <td height="53">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="394" height="53"
                                    background="<%=path%>/blue_style/resources/images/login/login_05.gif">
                                    &nbsp;</td>
                                <td width="206" background="<%=path%>/blue_style/resources/images/login/login_06.gif">
                                    <form action="<%=path%>/blue_style/view/main.jsp" method="post">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="16%" height="20">
                                                    <div align="right"><span class="STYLE1">用户</span></div>
                                                </td>
                                                <td width="57%">
                                                    <div align="center">
                                                        <input type="text" name="username"
                                                               style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                                                    </div>
                                                </td>
                                                <td width="27%">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="17">
                                                    <div align="right"><span class="STYLE1">密码</span></div>
                                                </td>
                                                <td>
                                                    <div align="center">
                                                        <input type="password" name="password"
                                                               style="width:105px; height:17px; background-color:#292929; border:solid 1px #7dbad7; font-size:12px; color:#6cd0ff">
                                                    </div>
                                                </td>
                                                <td>
                                                    <div align="left">
                                                        <input type="submit" value=""
                                                               style="width:49px;height:17px;background-repeat:no-repeat;background-image:url('<%=path%>/blue_style/resources/images/login/dl.gif');border:0;">
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </td>
                                <td width="362" background="<%=path%>/blue_style/resources/images/login/login_07.gif">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="213" background="<%=path%>/blue_style/resources/images/login/login_08.gif">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>

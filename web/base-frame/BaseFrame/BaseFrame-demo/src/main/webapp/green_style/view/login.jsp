<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String usersname = request.getParameter("usersname") == null ? "songhaikang" : request.getParameter("usersname").toString();
%>
<html>
<head>
    <title>管理员登录</title>

    <META http-equiv=Content-Type content="text/html; charset=UTF-8">
    <!--显示在地址栏开头出的图标-->
    <Link href="<%=path%>/green_style/resources/images/com/bss.ico" rel="Shortcut Icon">
    <link href="URL" rel="relationship">
    <link href="URL" rev="relationship">
    <%--引用的js--%>
    <script type="text/javascript" src="<%=path%>/view/home2/resources/js/jquery.js"></script>
    <script type="text/javascript" src="<%=path%>//view/home2/login.js"></script>
    <%--Ext引用开始--%>
    <link rel="stylesheet" type="text/css"
          href="<%=path%>/util/ext/css/ext-all.css"/>
    <script type="text/javascript" src="<%=path%>/view/home2/resources/ext/js/ext-base.js"></script>
    <script type="text/javascript" src="<%=path%>/view/home2/resources/ext/js/ext-all.js"></script>
    <%--Ext引用结束--%>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            overflow: hidden;
        }

        .STYLE3 {
            color: #528311;
            font-size: 12px;
        }

        .STYLE4 {
            color: #42870a;
            font-size: 12px;
        }

        -->
    </style>
</head>

<body>
<FORM name="form1" id="form1" action="showusers!login.action"
      method="post">
    <table width="100%" height="100%" border="0" cellpadding="0"
           cellspacing="0">
        <tr>
            <td bgcolor="#e5f6cf">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td height="608" background="<%=path%>/green_style/resources/images/login/login_03.gif">
                <table width="862" border="0" align="center" cellpadding="0"
                       cellspacing="0">
                    <tr>
                        <td height="266" background="<%=path%>/green_style/resources/images/login/login_04.gif">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="95">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="424" height="95"
                                        background="<%=path%>/green_style/resources/images/login/login_06.gif">
                                        &nbsp;
                                    </td>
                                    <td width="183" background="<%=path%>/green_style/resources/images/login/login_07.gif">

                                        <table width="100%" border="0" cellspacing="0"
                                               cellpadding="0">
                                            <tr>
                                                <td width="21%" height="30">
                                                    <div align="center">
                                                        <span class="STYLE3">用户</span>
                                                    </div>
                                                </td>
                                                <td width="79%" height="30">
                                                    <input type="text" id="usersname" class="textCss"
                                                           name="usersBean.usersname" value="<%=usersname%>"
                                                           style="width:130px;height:20px;" onblur="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="30">
                                                    <div align="center">
                                                        <span class="STYLE3">密码</span>
                                                    </div>
                                                </td>
                                                <td height="30">
                                                    <input type="password" id="password"
                                                           name="usersBean.password" value="123"
                                                           style="width:130px;height:20px;" onblur="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="30">
                                                    &nbsp;
                                                </td>
                                                <td height="30">
                                                    <%--                <input type="image" src='../../view/image/denglu.jpg'--%>
                                                    <%--					onclick="return checkUser();" width="41" height="22" border="0">--%>
                                                    <%--				<input type="image" src='../../view/image/chongzhi.jpg'--%>
                                                    <%--					onclick="return qingkong();" width="40" height="22" border="0">--%>
                                                    <img src="<%=path%>/green_style/resources/images/login/login_btn.gif" width="81" height="22"
                                                         border="0" usemap="#Map">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="255" background="<%=path%>/green_style/resources/images/login/login_08.gif">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="247" valign="top"
                            background="<%=path%>/green_style/resources/images/login/login_09.gif">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="22%" height="30">
                                        &nbsp;
                                    </td>
                                    <td width="56%">
                                        &nbsp;
                                    </td>
                                    <td width="22%">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td height="30">
                                        <table width="100%" border="0" cellspacing="0"
                                               cellpadding="0">
                                            <tr>
                                                <td width="44%" height="20">
                                                    &nbsp;
                                                </td>
                                                <td width="56%" class="STYLE4">
                                                    版本 2010V1.0
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td bgcolor="#a2d962">
                &nbsp;
            </td>
        </tr>
    </table>

    <map name="Map">
        <area shape="rect" coords="3,3,36,19" onclick="checkUser()">
        <area shape="rect" coords="40,3,78,18" onclick="return qingkong();">
    </map>
    <input type="submit" value="">
</form>
</body>
</html>



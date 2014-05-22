<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
//    String usersname = request.getSession().getAttribute("usersname").toString();
    String usersname = "宋海康";
%>
<html>
<head>
    <title></title>
    <META http-equiv=Content-Type content="text/html; charset=UTF-8">
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .STYLE1 {
            color: #43860c;
            font-size: 12px;
        }

        -->
    </style>
</head>
<SCRIPT language=JavaScript>
    var data = new Date();
    function timeview() {
        var weekday = data.getDay();
        if (weekday == 0) {
            weelday = "星期天";
        }
        if (weekday == 1) {
            weekday = "星期一";
        }
        if (weekday == 2) {
            weekday = "星期二";
        }
        if (weekday == 3) {
            weekday = "星期三";
        }
        if (weekday == 4) {
            weekday = "星期四";
        }
        if (weekday == 5) {
            weekday = "星期五";
        }
        if (weekday == 6) {
            weekday = "星期六";
        }
        timestr = data.toLocaleString() + "  " + data.getFullYear() + "年" + (data.getMonth() + 1) + "月" + data.getDate() + "日" + " " + weekday;
        timestr = timestr.substr(timestr.indexOf(":") - 2);
        document.getElementById("time_area").innerHTML = timestr;
        data.setSeconds(data.getSeconds() + 1);
        window.setTimeout("timeview()", 1000);
    }


    // 询问注销系统ϵͳ
    function iflogout() {
        if (window.confirm('确定退出吗？')) {
            document.getElementById("loginExit").submit();
            parent.parent.location = "../../../view/menu/login.jsp";
        }
    }

    //
    <!--屏蔽鼠标右键开始-->
    if (window.Event)
        document.captureEvents(Event.MOUSEUP);

    function nocontextmenu() {
        event.cancelBubble = true
        event.returnValue = false;

        return false;
    }

    function norightclick(e) {
        if (window.Event) {
            if (e.which == 2 || e.which == 3)
                return false;
        }
        else if (event.button == 2 || event.button == 3) {
            event.cancelBubble = true
            event.returnValue = false;
            return false;
        }

    }
    document.oncontextmenu = nocontextmenu;
    document.onmousedown = norightclick;
</SCRIPT>

<body onload=timeview();>
<table width="100%" border="0" bordercolor="blue" cellspacing="0"
       cellpadding="0" style="table-layout:fixed;">
    <tr>
        <td height="9" background="<%=path%>/green_style/resources/images/main/main_04.gif">
            <table width="100%" height="9" border="0" bordercolor="red"
                   cellspacing="0" cellpadding="0">
                <tr>
                    <td width="97" background="<%=path%>/green_style/resources/images/main/main_01.gif"></td>
                    <td>
                        <img height="9" src="<%=path%>/green_style/resources/images/main/main_04.gif"/>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="47" background="<%=path%>/green_style/resources/images/main/main_09.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="38" height="47" background="<%=path%>/green_style/resources/images/main/main_06.gif">
                        &nbsp;
                    </td>
                    <td width="59">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="29" background="<%=path%>/green_style/resources/images/main/main_07.gif">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td height="18" background="<%=path%>/green_style/resources/images/main/main_14.gif">
                                    <table width="100%" border="0" cellspacing="0"
                                           cellpadding="0" style="table-layout:fixed;">
                                        <tr>
                                            <td style="width:1px;">
                                                &nbsp;
                                            </td>
                                            <td>
														<span class="STYLE1"><%=usersname%>
														</span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="155" background="<%=path%>/green_style/resources/images/main/main_08.gif">
                        &nbsp;
                    </td>
                    <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="19" valign="bottom">
                                    <img src="<%=path%>/green_style/resources/images/main/main_12.gif" width="433" height="19"
                                         border="0" usemap="#Map"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="200" background="<%=path%>/green_style/resources/images/main/main_11.gif">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="10%" height="23">
                                    &nbsp;
                                </td>
                                <td width="90%" valign="bottom">
                                    <span class="STYLE1" id="time_area"></span>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="5"
            style="line-height:5px; background-image:url(<%=path%>/green_style/resources/images/main/main_18.gif)">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="180" background="<%=path%>/green_style/resources/images/main/main_16.gif"
                        style="line-height:5px;"></td>
                    <td>
                        <img height="5" src="<%=path%>/green_style/resources/images/main/main_18.gif"/>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<map name="Map" id="Map">
    <area shape="rect" coords="3,1,49,18" href="homepage.jsp"
          target="main"/>
    <area shape="rect" coords="52,2,95,18"
          href="javascript:window.parent.main.history.back();" target="main"/>
    <area shape="rect" coords="102,2,144,18"
          href="javascript:window.parent.main.history.go(1)" target="main"/>
    <area shape="rect" coords="150,1,197,18"
          href="javascript:window.parent.main.location.reload();"
          target="main"/>
    <area shape="rect" coords="210,2,304,18"
          href="conusers!usersToUpdate.action" target="main"/>
    <area shape="rect" coords="308,1,375,18" href="rili.htm"
          target="main"/>
    <form id="loginExit" name="loginExit"
          action="conusers!usersExit.action" method="post"></form>
    <area shape="rect" coords="380,2,430,18" href="#"
          onclick="iflogout()"/>
</map>
</body>
</html>

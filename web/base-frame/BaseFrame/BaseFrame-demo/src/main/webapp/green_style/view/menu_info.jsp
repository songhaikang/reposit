<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String role = "管理员";
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

        .STYLE2 {
            color: #43860c;
            font-size: 12px;
        }

        a:link {
            font-size: 12px;
            text-decoration: none;
            color: #43860c;
        }

        a:visited {
            font-size: 12px;
            text-decoration: none;
            color: #43860c;
        }

        a:hover {
            font-size: 12px;
            text-decoration: none;
            color: #FF0000;
        }

        -->
    </style>
    <script type="text/JavaScript">
        <!--
        function MM_preloadImages() { //v3.0
            var d = document;
            if (d.images) {
                if (!d.MM_p) d.MM_p = new Array();
                var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
                for (i = 0; i < a.length; i++)
                    if (a[i].indexOf("#") != 0) {
                        d.MM_p[j] = new Image;
                        d.MM_p[j++].src = a[i];
                    }
            }
        }

        function MM_swapImgRestore() { //v3.0
            var i, x, a = document.MM_sr;
            for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
        }

        function MM_findObj(n, d) { //v4.01
            var p, i, x;
            if (!d) d = document;
            if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
                d = parent.frames[n.substring(p + 1)].document;
                n = n.substring(0, p);
            }
            if (!(x = d[n]) && d.all) x = d.all[n];
            for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
            for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
            if (!x && d.getElementById) x = d.getElementById(n);
            return x;
        }

        function MM_swapImage() { //v3.0
            var i, j = 0, x, a = MM_swapImage.arguments;
            document.MM_sr = new Array;
            for (i = 0; i < (a.length - 2); i += 3)
                if ((x = MM_findObj(a[i])) != null) {
                    document.MM_sr[j++] = x;
                    if (!x.oSrc) x.oSrc = x.src;
                    x.src = a[i + 2];
                }
        }
        //-->
    </script>
    <script language="javascript">
        setInterval("tim()", 1000);
        function tim() {
            var data = new Date();
            var hour = data.getHours();
            var hello = "";
            if (hour >= 23 || hour <= 3)
                var hello = "您该休息了！";
            if (hour > 12 && hour <= 18)
                var hello = "下午好！";
            if (hour > 18 && hour < 23)
                var hello = "晚上好！";
            if (hour > 3 && hour < 6)
                var hello = "您好早啊！";
            if (hour >= 6 && hour <= 12)
                var hello = "上午好！";
            var dat = hello;
            time.innerText = dat;
        }
    </script>
    <SCRIPT language=JavaScript>
        if (window.Event) document.captureEvents(Event.MOUSEUP);
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
        function refresh() {
            window.location.reload();
        }
        setInterval("refresh()", 10000);
    </SCRIPT>
</HEAD>
<META content="MSHTML 6.00.2800.1491" name=GENERATOR>
<body
        onload="MM_preloadImages('<%=path%>/green_style/resources/images/main/main_26_1.gif','<%=path%>/green_style/resources/images/main/main_29_1.gif','<%=path%>/green_style/resources/images/main/main_31_1.gif')">
<table width="177" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0"
                   style="table-layout:fixed">
                <tr>
                    <td height="26" background="<%=path%>/green_style/resources/images/main/main_21.gif">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td height="80"
                        style="background-image:url(<%=path%>/green_style/resources/images/main/main_23.gif); background-repeat:repeat-x;">
                        <table width="98%" border="0" align="center" cellpadding="0"
                               cellspacing="0">
                            <tr>
                                <td height="45">
                                    <DIV class=STYLE2>
                                        <div style="text-align: center;">
                                            <IMG src="<%=path%>/green_style/resources/images/head_photo_default.gif" align="middle">
                                            &nbsp;
                                            <%=role%>
                                            &nbsp;
                                            <%=usersname%>
                                        </div>
                                        <div class=STYLE2 align=center>
                                            <SPAN id=time></SPAN>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td
                                        style="line-height:4px; background:url(<%=path%>/green_style/resources/images/main/main_38.gif)">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>

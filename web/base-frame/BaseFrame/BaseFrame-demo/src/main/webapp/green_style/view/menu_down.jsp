<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
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
</HEAD>
<body onload="MM_preloadImages('<%=path%>/green_style/resources/images/main/main_26_1.gif','<%=path%>/green_style/resources/images/main/main_29_1.gif','<%=path%>/green_style/resources/images/main/main_31_1.gif')">
<table width="177" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0"
                   style="table-layout:fixed">
                <tr>
                    <td style="line-height:4px; background:url(<%=path%>/green_style/resources/images/main/main_38.gif)">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td height="30"
                        style="background-image:url(<%=path%>/green_style/resources/images/main/main_23.gif); background-repeat:repeat-x;">
                        <table width="98%" border="0" align="center" cellpadding="0"
                               cellspacing="0">
                            <tr>
                                <td height="25">

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

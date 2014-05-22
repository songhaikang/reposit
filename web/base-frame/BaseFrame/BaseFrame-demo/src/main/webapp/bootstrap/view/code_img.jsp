<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
</head>

<body>
<form action="user.html" method="post">
    <table width="207" border="0" align="center">
        <tr>
            <td colspan="2" align="center" nowrap="nowrap">用户注册</td>
        </tr>
        <tr>
            <td width="68" nowrap="nowrap">用户名</td>
            <td width="127" nowrap="nowrap"><label>
                <input name="username" type="text" id="username" size="20"/>
            </label></td>
        </tr>
        <tr>
            <td nowrap="nowrap">密　码</td>
            <td nowrap="nowrap"><input name="password" type="password" id="password" size="20" maxlength="10"/></td>
        </tr>
        <tr>
            <td>验证码</td>
            <td><input id="index_code" name="code" type="text"/></td>
            <td><img id="imgObj" alt="验证码" src="<%=path%>/code/img.do"/>
                <a href="#" onclick="changeImg()">换一张</a></td>
        </tr>
        <tr>
            <td colspan="2" align="center" nowrap="nowrap"><label>
                <input type="submit" value="注册"/>
                <input type="reset" value="重填"/>
            </label></td>
        </tr>
    </table>
</form>
</body>
</html>
<script src="<%=path%>/bootstrap/assets/js/jquery-ui-1.10.3.custom.min.js"></script>


<script type="text/javascript">
    jQuery(function ($) {
        function changeImg() {
            alert("ll");

            var imgSrc = $("#imgObj");
            var src = imgSrc.attr("src");
            imgSrc.attr("src", chgUrl(src));
        }

        //时间戳
        //为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
        function chgUrl(url) {
            var timestamp = (new Date()).valueOf();
            url = url.substring(0, 17);
            if ((url.indexOf("&") >= 0)) {
                url = url + "×tamp=" + timestamp;
            } else {
                url = url + "?timestamp=" + timestamp;
            }
            return url;
        }

    });
</script>




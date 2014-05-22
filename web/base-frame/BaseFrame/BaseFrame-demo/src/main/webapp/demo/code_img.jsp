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
<form action="" method="post">
    <table width="300" border="0" align="center">
        <tr>
            <td>验证码</td>
            <td><input id="codeContent" name="codeContent" type="text"/></td>
            <td><img id="codeImg" name="codeImg" alt="验证码" src=""/>
                <input id="codeKey" name="codeKey" type="text"/>
                <a id="changeImgCode" href="#">换一张</a></td>
        </tr>
        <tr>
            <td><label>
                <input id="checkImgCode" name="checkImgCode" type="button" value="校验验证码"/>
            </label></td>
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
<script src="<%=path%>/demo/jquery-1.11.1.min.js"></script>


<script type="text/javascript">
    changeImg();

    $('#changeImgCode').on('click', function () {
        changeImg();
    });

    $('#checkImgCode').on('click', function () {
        checkImgCode();
    });


    function changeImg() {
        var codeKey = $("#codeKey").val();
        var paramData = {"codeKey": codeKey};
        $.ajax({
            type: "post",
            async: true,//异步，如果等于false 那么就是同步
            url: "<%=path%>/code/getImgCode.do",
            dataType: "json",
            data: paramData,
            success: function (data) {
                if (data != null) {
                    $("#codeImg").attr('src', data.imgUrl)
                    $("#codeKey").val(data.codeKey);
                }
            },
            error: function (data) {
                alert("请求服务器出错！" + data);
            }
        });
    }

    function checkImgCode() {
        var codeKey = $("#codeKey").val();
        var codeContent = $("#codeContent").val();
        var paramData = {"codeKey": codeKey, "codeContent": codeContent};
        $.ajax({
            type: "post",
            async: true,//异步，如果等于false 那么就是同步
            url: "<%=path%>/code/checkImgCode.do",
            dataType: "json",
            data: paramData,
            success: function (data) {
                if (data != null && data == true) {
                    alert("验证成功！");
                } else {
                    alert("验证失败！");
                    changeImg();
                }
            },
            error: function (data) {
                alert("请求服务器出错！" + data);
            }
        });
    }


</script>




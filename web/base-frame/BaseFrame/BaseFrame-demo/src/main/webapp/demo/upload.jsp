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

    文件上传测试：
    <form id="uploadFileForm" name="uploadFileForm" action="upload.do" enctype="multipart/form-data" method="post">
        选择文件：<input type="file" name="filess"/><br>
        <input  type="submit" value="SUBMIT">
    </form>
    <br>
    <%--<input type="button" value="SUBMIT" onclick="submitForm()">--%>
    <hr>

</div>
</body>
</html>


<script src="<%=path%>/demo/jquery-1.11.1.min.js"></script>


<script type="text/javascript">
//    function submitForm() {
//        alert(111);
//        alert($('#uploadFileForm').serialize());
//        //ajax提交form表单的方式
//        $('#uploadFileForm').submit(function () {
//            alert(222);
//            alert($('#uploadFileForm').serialize());
//            $.ajax({
//                type: "POST",
//                dataType: "html",
//                url: "upload.do",
//                data: $('#uploadFileForm').serialize(),
//                success: function (data) {
//                    alert(data);
//                    //加载最大可退金额
////                    $("#spanMaxAmount").html(data);
//                },
//                error: function (data) {
//                    alert("error:" + data.responseText);
//                }
//
//            });
//        });
//    }

</script>
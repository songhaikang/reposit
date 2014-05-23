//登录画面处理
jQuery(function ($) {

    var usernameId = "#username", passwordId = "#password",
        codeContentLoginId = "#codeContentLogin", codeKeyLoginId = "#codeKeyLogin", codeImgLoginId = "#codeImgLogin";

    app.changeVerifyCode(codeKeyLoginId, codeImgLoginId);
    $(codeImgLoginId).on('click', function () {
        app.changeVerifyCode(codeKeyLoginId, codeImgLoginId);
    });

    $('#loginBtn').on('click', function () {
        if (checkContent() == "SUCCESS") {
            var paramData = {"username": $(usernameId).val(), "password": $(passwordId).val(),
                codeKey: $(codeKeyLoginId).val(), codeContent: $(codeContentLoginId).val()};
            $.ajax({
                type: "post",
                async: true,//异步，如果等于false 那么就是同步
                url: "/BaseFrame-web/anonymous/uc/loginUserWithVerifyCode.do",
                dataType: "json",
                data: paramData,
                success: function (data) {
                    if (data != null) {
                        if (data.statusCode == "LOGIN_SUCCESS") {
                            loginSuccess(data.token);
                        }
                        showWarnMsg(data.statusMsg);
                        app.changeVerifyCode(codeKeyLoginId, codeImgLoginId);
                    }
                },
                error: function (data) {
                    showWarnMsg("请求服务器出错！");
                }
            });
        }

    });

    function loginSuccess(takenValue) {
        if (document.getElementById("remberPassword").checked) {
            app.setTokenToCookie(takenValue);
        }
    }

    function checkContent() {
        var result = "FAIL";
        if ($(usernameId).val() == "") {
            showWarnMsg("用户名不能为空！");
            $(usernameId).focus();
            return result;
        }

        if ($(passwordId).val() == "") {
            showWarnMsg("密码不能为空！");
            $(passwordId).focus();
            return result;
        }

        if ($(codeContentLoginId).val() == "") {
            showWarnMsg("验证码不能为空！");
            $(codeContentLoginId).focus();
            return result;
        }

        return "SUCCESS";
    }

    function showWarnMsg(msg) {
        $("#loginTitleInit").hide(1000);
        $("#loginTitleWarn").show(1000);
        $("#loginTitleWarnMsg").text(msg);
    }
});


//注册画面处理
jQuery(function ($) {
    var emailRegId = "#emailReg", usernameRegId = "#usernameReg", passwordRegId1 = "#passwordReg1", passwordRegId2 = "#passwordReg2",
        agreeRegId = "#agreeReg", regTitleInitId = "#regTitleInit", regTitleWarnId = "#regTitleWarn", regTitleWarnMsgId = "#regTitleWarnMsg";

    //点击登录画面的“注册帐号”
    $('#loginToReg').on('click', function () {
        $(regTitleWarnId).hide();
        $(regTitleInitId).show();
    });

    $('#regBtn').on('click', function () {
        if (checkContent()) {
            var paramData = {"email": $(emailRegId).val(), "username": $(usernameRegId).val(), "password": $(passwordRegId1).val()};
            $.ajax({
                type: "post",
                async: true,//异步，如果等于false 那么就是同步
                url: "/BaseFrame-web/uc/regUser.do",
                dataType: "json",
                data: paramData,
                success: function (data) {
                    if (data != null) {
                        alert(data.success + "|||" + data.msg);
                        if (data.success == true) {
                            alert("成功" + data.msg);
                        }
                        showWarnMsg(data.msg);
                    }
                },
                error: function (data) {
                    showWarnMsg("请求服务器出错！" + data);
                }
            });
        }
    });


    function checkContent() {
        if ($(emailRegId).val() == "") {
            showWarnMsg("邮箱不能为空！");
            $(emailRegId).focus();
            return false;
        }

        if ($(usernameRegId).val() == "") {
            showWarnMsg("用户名不能为空！");
            $(usernameRegId).focus();
            return false;
        }

        if ($(passwordRegId1).val() == "") {
            showWarnMsg("密码不能为空！");
            $(passwordRegId1).focus();
            return false;
        }

        if ($(passwordRegId2).val() == "") {
            showWarnMsg("重复密码不能为空！");
            $(passwordRegId2).focus();
            return false;
        }

        if ($(passwordRegId1).val() != $(passwordRegId2).val()) {
            showWarnMsg("两次密码输入不一致！");
            $(passwordRegId2).focus();
            return false;
        }

        if ($(agreeRegId).attr("checked") != "checked") {
            showWarnMsg("注册前必须同意注册协议！");
            $(agreeRegId).focus();
            return false;
        }

        return true;
    }

    function showWarnMsg(msg) {
        $(regTitleInitId).hide(1000);
        $(regTitleWarnId).show(1000);
        $(regTitleWarnMsgId).text(msg);
    }


});
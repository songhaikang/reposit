App = function () {//构造函数
    this.tokenKey = 'token';

}

App.prototype = { //定义方法
    getTokenByCookie: function () {
        var arr = document.cookie.match(new RegExp("(^| )" + this.tokenKey + "=([^;]*)(;|$)"));
        if (arr != null) {
            return unescape(arr[2]);
        } else {
            return "";
        }
    },

    setTokenToCookie: function (value) {
        var Days = 7;
        var exp = new Date();
        exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
        document.cookie = this.tokenKey + "=" + escape(value) + ";expires=" + exp.toGMTString();
    },

    /**
     * 更换验证码
     * @param codeKeyId 验证码键所在标签的ID
     * @param codeImgId 验证码图片所在标签的ID
     */
    changeVerifyCode: function (codeKeyId, codeImgId) {
        var codeKey = $(codeKeyId).val();
        var paramData = {"codeKey": codeKey};
        $.ajax({
            type: "post",
            async: true,//异步，如果等于false 那么就是同步
            url: "/BaseFrame-web/anonymous/cache/getVerifyCode.do",
            dataType: "json",
            data: paramData,
            success: function (data) {
                if (data != null) {
                    $(codeImgId).attr('src', data.imgUrl)
                    $(codeKeyId).val(data.codeKey);
                }
            },
            error: function (data) {
                alert("请求服务器出错！" + data);
            }
        });
    },

    /**
     * 检查验证码是否正确，true:正确，false：错误
     * @param codeKeyId 验证码键所在标签的ID
     * @param codeContentId 验证码值所在标签的ID
     * @param codeImgId 验证码图片所在标签的ID
     */
    checkVerifyCode: function (codeKeyId, codeContentId, codeImgId) {
        var result = "FAIL";
        var codeKey = $(codeKeyId).val();
        var codeContent = $(codeContentId).val();
        var paramData = {"codeKey": codeKey, "codeContent": codeContent};
        $.ajax({
            type: "post",
            async: false,//异步，如果等于false 那么就是同步
            url: "/BaseFrame-web/anonymous/cache/checkVerifyCode.do",
            dataType: "json",
            data: paramData,
            success: function (data) {
                if (data != null && data == true) {
                    result = "SUCCESS";
                }
            },
            error: function (data) {
            }
        });
        changeVerifyCode(codeKeyId, codeImgId);
        return result;

    }


}

app = new App();
App = function () {//构造函数
    this.tokenKey = "token";
    this.userInfo = "userInfo";
    this.baseUrl = "http://localhost:8081/BaseFrame-web";


}

App.prototype = { //定义方法

    setTokenToCookie: function (tokenValue) {
        var Days = 7;
        var exp = new Date();
        exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
        document.cookie = this.tokenKey + "=" + encodeURI(tokenValue) + ";expires=" + exp.toGMTString();
    },

    getTokenByCookie: function () {
        var arr = document.cookie.match(new RegExp("(^| )" + this.tokenKey + "=([^;]*)(;|$)"));
        if (arr != null) {
            return decodeURI(arr[2]);
        } else {
            return "";
        }
    },

    setUserInfoToCookie: function (userInfoJson) {
        var Days = 7;
        var exp = new Date();
        exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
//        var userInfoJson = JSON.stringify(userInfo);//JSON对象转换为JSON字符串
        document.cookie = this.userInfo + "=" + encodeURI(userInfoJson) + ";expires=" + exp.toGMTString();
    },

    getUserInfoByCookie: function () {
        var userInfoJsonContent = document.cookie.match(new RegExp("(^| )" + this.userInfo + "=([^;]*)(;|$)"));
        var userInfoJson = decodeURI(userInfoJsonContent[2]);
        var userInfo = JSON.parse(userInfoJson);
        return userInfo;
    },

    isEmpty: function (value) {
        if (value == null || value == undefined || value == "undefined" || value.length < 1) {
            return true;
        } else {
            return false;
        }
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
            url: app.baseUrl + "/anonymous/cache/getVerifyCode.do",
            dataType: "json",
            data: paramData,
            success: function (data) {
                if (data != null) {
                    $(codeImgId).attr('src', data.imgUrl);
                    $(codeKeyId).val(data.codeKey);
                }
            },
            error: function (data) {
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
            url: app.baseUrl + "/anonymous/cache/checkVerifyCode.do",
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
package com.shk.baseframe.demo.uc.domain;

import com.shk.baseframe.api.uc.domain.UcUserInfo;

/**
 * @author: Ivan Vigoss
 * Date: 14-2-20
 * Time: AM11:11
 */
public class UserInfo extends UcUserInfo {

    private String Id;

    private String oper;

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getOper() {
        return oper;
    }

    public void setOper(String oper) {
        this.oper = oper;
    }
}

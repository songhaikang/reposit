package com.shk.baseframe.api.uc.domain;

/**
 * @author: Ivan Vigoss
 * Date: 14-2-20
 * Time: AM11:11
 */
public class User extends AbstractModel {

    private String userId;

    private String userName;

    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}

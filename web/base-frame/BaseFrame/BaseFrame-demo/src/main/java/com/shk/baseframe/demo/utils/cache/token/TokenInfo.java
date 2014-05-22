package com.shk.baseframe.demo.utils.cache.token;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-14
 * Time: 下午10:16
 * To change this template use File | Settings | File Templates.
 */
public class TokenInfo {

    private String userId;

    private String token;

    private long lastUseTime;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public long getLastUseTime() {
        return lastUseTime;
    }

    public void setLastUseTime(long lastUseTime) {
        this.lastUseTime = lastUseTime;
    }
}

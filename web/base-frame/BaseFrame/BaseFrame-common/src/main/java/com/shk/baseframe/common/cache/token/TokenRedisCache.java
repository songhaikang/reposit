package com.shk.baseframe.common.cache.token;

import com.shk.baseframe.common.cache.Jedis.JedisTools;
import com.shk.baseframe.common.character.StringUtils;
import com.shk.baseframe.common.dbmapper.uc.domain.UcUserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * User: keqiaokeji
 * Date: 14-5-14
 * Time: 下午10:19
 * To change this template use File | Settings | File Templates.
 */
@Service("tokenRedisCache")
public class TokenRedisCache implements TokenCtrl{

    @Autowired
    JedisTools jedisTools;

    private final long TIMEOUT = 60 * 60;//超时时间为1小时
    private final String TOKEN_PREFIX = "token_";


    public String addToken(UcUserInfo ucUserInfo) {
        String token = StringUtils.getUUID();
        jedisTools.setObject(getJedisToken(token), ucUserInfo, TIMEOUT);
        return token;
    }

    public boolean checkTokenTimeOut(String token) {
        return jedisTools.exitsAndSetTimeout(getJedisToken(token), TIMEOUT);
    }

    public UcUserInfo getUcUserInfo(String token){
        return jedisTools.getObject(getJedisToken(token), UcUserInfo.class);
    }

    private String getJedisToken(String token) {
        return TOKEN_PREFIX + token;
    }


}

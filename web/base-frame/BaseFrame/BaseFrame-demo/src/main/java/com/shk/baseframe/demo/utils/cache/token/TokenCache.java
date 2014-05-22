package com.shk.baseframe.demo.utils.cache.token;

import com.shk.baseframe.common.character.StringUtils;

import java.util.Date;
import java.util.Hashtable;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-14
 * Time: 下午10:19
 * To change this template use File | Settings | File Templates.
 */
public class TokenCache {

    private static Hashtable<String, TokenInfo> tokens = new Hashtable<String, TokenInfo>();

    /**
     * 新增用户Token(用户登录成功之后添加)
     *
     * @param userId 用户ID
     * @return 返回Token值
     */
    public static String addToken(String userId) {
        String tokenContent = StringUtils.getUUID();
        TokenInfo token = new TokenInfo();
        token.setUserId(userId);
        token.setToken(tokenContent);
        token.setLastUseTime(new Date().getTime());
        tokens.put(tokenContent, token);
        return tokenContent;
    }


    public static boolean checkTokenTimeOut(String token) {
        boolean result = false;
        TokenInfo tokenInfo = tokens.get(token);
        if (tokenInfo != null) {
            long currentTime = new Date().getTime();
            long timeSpace = currentTime - tokenInfo.getLastUseTime();
            if (timeSpace < 1000 * 60 * 60) {//如果距离最后一次使用时间不超过一小时则可继续使用
                tokenInfo.setLastUseTime(currentTime);
                result = true;
            } else {//如果已经过时则移除该用户
                tokens.remove(token);
            }
        }
        return result;
    }

    public static TokenInfo getTokenInfo(String token){
        return tokens.get(token);
    }


}

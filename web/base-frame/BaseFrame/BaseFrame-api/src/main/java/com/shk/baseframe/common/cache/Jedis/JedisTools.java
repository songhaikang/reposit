package com.shk.baseframe.common.cache.Jedis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * 当个Redis服务管理
 * Created by shk on 14-5-21.
 */
@Component//交给Spring托管， Component：范型对象
public class JedisTools {

    /**
     * 单个Redia服务的链接池
     */
    @Autowired
    private JedisPool jedisPool;


    public void set(String key, String value) {
        Jedis jedis = jedisPool.getResource();
        jedis.set(key, value);
        jedisPool.returnResource(jedis);
    }







}

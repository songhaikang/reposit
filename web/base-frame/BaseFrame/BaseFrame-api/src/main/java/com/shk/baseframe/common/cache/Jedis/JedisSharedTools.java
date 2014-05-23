package com.shk.baseframe.common.cache.Jedis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import redis.clients.jedis.ShardedJedis;
import redis.clients.jedis.ShardedJedisPool;

/**
 * 集群Redis服务管理
 * Created by shk on 14-5-21.
 */
@Component
public class JedisSharedTools {

    /**
     * 集群服务
     */
    @Autowired
    private ShardedJedisPool shardedJedisPool;


    public void set(String key, String value) {
        ShardedJedis shardedJedis = shardedJedisPool.getResource();
        shardedJedis.set(key, value);
        shardedJedisPool.returnResource(shardedJedis);
    }

}

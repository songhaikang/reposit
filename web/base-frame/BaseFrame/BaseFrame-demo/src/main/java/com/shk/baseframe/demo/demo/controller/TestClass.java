package com.shk.baseframe.demo.demo.controller;

/**
 * Created by shk on 14-5-21.
 */
import redis.clients.jedis.*;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * java 连接 redis
 *
 * @author StarZou
 * @since 2014年5月2日 下午10:48:21
 **/
public class TestClass {

    /**
     * JedisPool
     *
     * @throws Exception
     */
    public void t1() throws Exception {
        JedisPool pool = new JedisPool(new JedisPoolConfig(), "192.168.1.201");
        final Jedis jedis = pool.getResource();
        jedis.set("myname", "helloworld");
        final String name = jedis.get("myname");
        System.out.println(name);
        pool.returnResource(jedis);
        pool.destroy();
    }

    /**
     * JedisCluster
     */
    public void cluster() {
        // redis 节点 集合
        Set<HostAndPort> nodes = new HashSet<HostAndPort>();
        nodes.add(new HostAndPort("192.168.1.201", 6379));
        nodes.add(new HostAndPort("192.168.1.212", 6379));

        // JedisCluster 集群操作对象
        JedisCluster jedisCluster = new JedisCluster(nodes);

        jedisCluster.set("date", new Date().toString());
    }
}
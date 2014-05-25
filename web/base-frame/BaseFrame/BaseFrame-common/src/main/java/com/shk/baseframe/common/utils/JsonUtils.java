package com.shk.baseframe.common.utils;

import com.alibaba.fastjson.JSON;

/**
 * Json转行工具栏
 * Created by shk on 14-5-24.
 */
public class JsonUtils {


    public static final String toJSONString(Object object) {
       return JSON.toJSONString(object);
    }

    public static final <T> T parseObject(String json, Class<T> clazz) {
        return JSON.parseObject(json, clazz);

    }



}

package com.shk.baseframe.demo.utils.cache.imgcode;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-17
 * Time: 下午3:15
 * To change this template use File | Settings | File Templates.
 */
public class ImgCodeInfo {

    /**
     * 验证码的键
     */
    private String codeKey;

    /**
     * 验证码的内容
     */
    private List<String> codeContents;

    /**
     * 验证码的路径
     */
    private String imgUrl;

    /**
     * 验证码的生成时间（以便后期将长时间不用的验证码数据清理掉）
     */
    private long createTime;



    public String getCodeKey() {
        return codeKey;
    }

    public void setCodeKey(String codeKey) {
        this.codeKey = codeKey;
    }

    public List<String> getCodeContents() {
        return codeContents;
    }

    public void setCodeContents(List<String> codeContents) {
        this.codeContents = codeContents;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public long getCreateTime() {
        return createTime;
    }

    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }
}

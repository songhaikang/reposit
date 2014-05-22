package com.shk.baseframe.demo.utils.cache.imgcode;

import java.util.Date;
import java.util.Hashtable;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-17
 * Time: 下午3:12
 * To change this template use File | Settings | File Templates.
 */
public class ImgCodeCache {

    private static Hashtable<String, ImgCodeInfo> imgCodes = new Hashtable<String, ImgCodeInfo>();


    /**
     * 存储验证码
     *
     * @param codeKey      验证码的键
     * @param codeContents 验证码内容
     * @param imgUrl       验证码图片的URL
     * @return 验证码的键（32位的UUID）
     */
    public static String addImgCode(String codeKey, List<String> codeContents, String imgUrl) {
        ImgCodeInfo imgCodeInfo = new ImgCodeInfo();
        imgCodeInfo.setCodeKey(codeKey);
        imgCodeInfo.setCodeContents(codeContents);
        imgCodeInfo.setImgUrl(imgUrl);
        imgCodeInfo.setCreateTime(new Date().getTime());
        imgCodes.put(codeKey, imgCodeInfo);
        return codeKey;
    }

    /**
     * 验证验证码是否正确
     *
     * @param codeKey     验证码的键
     * @param codeContent 验证码的内容
     * @return true：验证码码正确，false：验证码错误
     */
    public static boolean checkImgCode(String codeKey, String codeContent) {
        boolean result = false;
        ImgCodeInfo imgCodeInfo = imgCodes.get(codeKey);
        if (imgCodeInfo != null) {
            String content = "";
            for (String code : imgCodeInfo.getCodeContents()) {
                content = content + code;
            }

            if (content.equalsIgnoreCase(codeContent)) {
                imgCodes.remove(codeKey);
                result = true;
            }
        }
        return result;
    }

    public static ImgCodeInfo getImgCodeInfo(String codeKey) {
        return imgCodes.get(codeKey);
    }


    public static void remove(String codeKey) {
        imgCodes.remove(codeKey);
    }


    public static Hashtable<String, ImgCodeInfo> getImgCodes() {
        return imgCodes;
    }

    public static void setImgCodes(Hashtable<String, ImgCodeInfo> imgCodes) {
        ImgCodeCache.imgCodes = imgCodes;
    }
}

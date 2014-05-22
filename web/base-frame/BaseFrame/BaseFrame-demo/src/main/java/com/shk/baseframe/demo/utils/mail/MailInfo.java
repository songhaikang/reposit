package com.shk.baseframe.demo.utils.mail;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-15
 * Time: 下午11:19
 * To change this template use File | Settings | File Templates.
 */
public class MailInfo {

    /**
     * 发件人邮箱服务器
     */
    private String emailHost;
    /**
     * 发件人邮箱
     */
    private String emailFrom;

    /**
     * 发件人用户名
     */
    private String emailUserName;

    /**
     * 发件人密码
     */
    private String emailPassword;

    /**
     * 收件人邮箱，多个邮箱以“;”分隔
     */
    private String toEmails;
    /**
     * 邮件主题
     */
    private String subject;
    /**
     * 邮件内容
     */
    private String content;
    /**
     * 邮件中的图片，为空时无图片。map中的key为图片ID，value为图片地址
     */
    private Map<String, String> pictures;
    /**
     * 邮件中的附件，为空时无附件。map中的key为附件ID，value为附件地址
     */
    private Map<String, String> attachments;


    public String getEmailHost() {
        return emailHost;
    }

    public void setEmailHost(String emailHost) {
        this.emailHost = emailHost;
    }

    public String getEmailFrom() {
        return emailFrom;
    }

    public void setEmailFrom(String emailFrom) {
        this.emailFrom = emailFrom;
    }

    public String getEmailUserName() {
        return emailUserName;
    }

    public void setEmailUserName(String emailUserName) {
        this.emailUserName = emailUserName;
    }

    public String getEmailPassword() {
        return emailPassword;
    }

    public void setEmailPassword(String emailPassword) {
        this.emailPassword = emailPassword;
    }

    public String getToEmails() {
        return toEmails;
    }

    public void setToEmails(String toEmails) {
        this.toEmails = toEmails;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Map<String, String> getPictures() {
        return pictures;
    }

    public void setPictures(Map<String, String> pictures) {
        this.pictures = pictures;
    }

    public Map<String, String> getAttachments() {
        return attachments;
    }

    public void setAttachments(Map<String, String> attachments) {
        this.attachments = attachments;
    }
}

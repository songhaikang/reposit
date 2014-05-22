package com.shk.baseframe.demo.utils.mail;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-15
 * Time: 下午11:30
 * To change this template use File | Settings | File Templates.
 */
public class MailTest {


    public static void main(String[] args) throws Exception {
        MailInfo mailInfo = new MailInfo();
        mailInfo.setEmailHost("smtp.163.com");
        mailInfo.setEmailFrom("songhaikang@163.com");
        mailInfo.setEmailUserName("songhaikang@163.com");
        mailInfo.setEmailPassword("");

//
//        mailInfo.setEmailHost("smtp.qq.com");
//        mailInfo.setEmailFrom("940050218@qq.com");
//        mailInfo.setEmailUserName("940050218@qq.com");
//        mailInfo.setEmailPassword("");


//        test1(mailInfo);
//        test2(mailInfo);
//        test3(mailInfo);
//        test4(mailInfo);
//        test5(mailInfo);
//        test6(mailInfo);

    }

    public static void test1(MailInfo mailInfo) throws Exception {
        String toEmails = "940050218@qq.com";
        String subject = "Email Test 第一封，简单文本邮件";
        StringBuilder builder = new StringBuilder();
        builder.append("我相信天上不会掉馅饼");
        String content = builder.toString();

        mailInfo.setToEmails(toEmails);
        mailInfo.setSubject(subject);
        mailInfo.setContent(content);

        new MailUtil().sendEmail(mailInfo);
    }

    public static void test2(MailInfo mailInfo) throws Exception {
        String toEmails = "940050218@qq.com";
        String subject = "Email Test 第二封，HTML邮件";
        StringBuilder builder = new StringBuilder();
        builder.append("<html><body>老婆：<br />我是你的老公吗？<br />是的，是很久了。<br /></body></html>");
        String content = builder.toString();

        mailInfo.setToEmails(toEmails);
        mailInfo.setSubject(subject);
        mailInfo.setContent(content);

        new MailUtil().sendEmail(mailInfo);
    }

    public static void test3(MailInfo mailInfo) throws Exception {

        String toEmails = "940050218@qq.com";
        String subject = "Email Test 第三封，图片邮件";

        Map<String, String> pictures = new HashMap<String, String>();
        pictures.put("d1", "/Users/shk/Desktop/temp/1.jpg");
        pictures.put("d2", "/Users/shk/Desktop/temp/2.jpg");
        pictures.put("d3", "/Users/shk/Desktop/temp/3.jpg");

        StringBuilder builder = new StringBuilder();
        builder.append("<html><body>看看下面的图，你会知道花儿为什么是这样红的：<br />");
        builder.append("<img src=\"cid:d1\" /><br />");
        builder.append("<img src=\"cid:d2\" /><br />");
        builder.append("<img src=\"cid:d3\" /><br />");
        builder.append("</body></html>");
        String content = builder.toString();

        mailInfo.setToEmails(toEmails);
        mailInfo.setSubject(subject);
        mailInfo.setContent(content);
        mailInfo.setPictures(pictures);

        new MailUtil().sendEmail(mailInfo);

    }

    public static void test4(MailInfo mailInfo) throws Exception {
        String toEmails = "940050218@qq.com";
        String subject = "Email Test 第四封，附件邮件";
        Map<String, String> attachments = new HashMap<String, String>();
        attachments.put("d1.jar", "/Users/shk/Desktop/temp/test.rar");
        attachments.put("测试附件.doc", "/Users/shk/Desktop/temp/test.doc");
//        attachments.put("d2.doc", "/Users/shk/Desktop/temp/人月神话.txt");
        StringBuilder builder = new StringBuilder();
        builder.append("<html><body>看看附件中的资料，你会知道世界为什么是平的。</body></html>");
        String content = builder.toString();

        mailInfo.setToEmails(toEmails);
        mailInfo.setSubject(subject);
        mailInfo.setContent(content);
        mailInfo.setAttachments(attachments);

        new MailUtil().sendEmail(mailInfo);
    }

    public static void test5(MailInfo mailInfo) throws Exception {
        String toEmails = "940050218@qq.com";
        String subject = "Email Test 第五封，综合邮件";

        Map<String, String> attachments = new HashMap<String, String>();
        attachments.put("d1.jar", "/Users/shk/Desktop/temp/test.rar");
        attachments.put("d2.doc", "/Users/shk/Desktop/temp/test.doc");

        Map<String, String> pictures = new HashMap<String, String>();
        pictures.put("d1", "/Users/shk/Desktop/temp/1.jpg");
        pictures.put("d2", "/Users/shk/Desktop/temp/2.jpg");
        pictures.put("d3", "/Users/shk/Desktop/temp/3.jpg");

        StringBuilder builder = new StringBuilder();
        builder.append("<html><body>看看附件中的资料，你会知道世界为什么是平的。<br />");
        builder.append("看看下面的图，你会知道花儿为什么是这样红的：<br />");
        builder.append("<img src=\"cid:d1\" /><br />");
        builder.append("<img src=\"cid:d2\" /><br />");
        builder.append("<img src=\"cid:d3\" /><br />");
        builder.append("</body></html>");
        String content = builder.toString();

        mailInfo.setToEmails(toEmails);
        mailInfo.setSubject(subject);
        mailInfo.setContent(content);
        mailInfo.setPictures(pictures);
        mailInfo.setAttachments(attachments);

        new MailUtil().sendEmail(mailInfo);
    }

    public static void test6(MailInfo mailInfo) throws Exception {
        String toEmails = "940050218@qq.com;songhaikang@163.com";
        String subject = "Email Test 第六封，群发邮件";

        Map<String, String> attachments = new HashMap<String, String>();
        attachments.put("d1.jar", "/Users/shk/Desktop/temp/test.rar");
        attachments.put("d2.doc", "/Users/shk/Desktop/temp/test.doc");

        Map<String, String> pictures = new HashMap<String, String>();
        pictures.put("d1", "/Users/shk/Desktop/temp/1.jpg");
        pictures.put("d2", "/Users/shk/Desktop/temp/2.jpg");
        pictures.put("d3", "/Users/shk/Desktop/temp/3.jpg");

        StringBuilder builder = new StringBuilder();
        builder.append("<html><body>看看附件中的资料，你会知道世界为什么是平的。<br />");
        builder.append("看看下面的图，你会知道花儿为什么是这样红的：<br />");
        builder.append("<img src=\"cid:d1\" /><br />");
        builder.append("<img src=\"cid:d2\" /><br />");
        builder.append("<img src=\"cid:d3\" /><br />");
        builder.append("</body></html>");
        String content = builder.toString();

        mailInfo.setToEmails(toEmails);
        mailInfo.setSubject(subject);
        mailInfo.setContent(content);
        mailInfo.setPictures(pictures);
        mailInfo.setAttachments(attachments);

        new MailUtil().sendEmail(mailInfo);
    }
}

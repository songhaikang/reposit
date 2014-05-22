package com.shk.baseframe.demo.utils.mail;


import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import java.io.File;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: shk
 * Date: 14-5-15
 * Time: 下午11:15
 * To change this template use File | Settings | File Templates.
 */
public class MailUtil {


    /**
     * 发送邮件
     * @param mailInfo
     * @throws Exception
     */
    public void sendEmail(MailInfo mailInfo) throws Exception {
        if (mailInfo.getEmailHost().equals("") || mailInfo.getEmailFrom().equals("")
                || mailInfo.getEmailUserName().equals("")
                || mailInfo.getEmailPassword().equals("")) {
            throw new RuntimeException("发件人信息不完全，请确认发件人信息！");
        }

        JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();
        senderImpl.setHost(mailInfo.getEmailHost());// 设定mail server

        // 建立邮件消息
        MimeMessage mailMessage = senderImpl.createMimeMessage();
        MimeMessageHelper messageHelper = new MimeMessageHelper(mailMessage, true, "UTF-8");
        messageHelper.setFrom(mailInfo.getEmailFrom());// 设置发件人邮箱
        // 设置收件人邮箱
        String[] toEmailArray = mailInfo.getToEmails().split(";");
        List<String> toEmailList = new ArrayList<String>();
        if (null == toEmailArray || toEmailArray.length <= 0) {
            throw new RuntimeException("收件人邮箱不得为空！");
        } else {
            for (String s : toEmailArray) {
                if (!s.equals("")) {
                    toEmailList.add(s);
                }
            }
            if (null == toEmailList || toEmailList.size() <= 0) {
                throw new RuntimeException("收件人邮箱不得为空！");
            } else {
                toEmailArray = new String[toEmailList.size()];
                for (int i = 0; i < toEmailList.size(); i++) {
                    toEmailArray[i] = toEmailList.get(i);
                }
            }
        }
        messageHelper.setTo(toEmailArray);
        messageHelper.setSubject(mailInfo.getSubject());// 邮件主题
        messageHelper.setText(mailInfo.getContent(), true);// true 表示启动HTML格式的邮件

        // 添加图片
        if (null != mailInfo.getPictures()) {
            for (Iterator<Map.Entry<String, String>> it = mailInfo.getPictures().entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, String> entry = it.next();
                String cid = entry.getKey();
                String filePath = entry.getValue();
                if (null == cid || null == filePath) {
                    throw new RuntimeException("请确认每张图片的ID和图片地址是否齐全！");
                }

                File file = new File(filePath);
                if (!file.exists()) {
                    throw new RuntimeException("图片" + filePath + "不存在！");
                }

                FileSystemResource img = new FileSystemResource(file);
                messageHelper.addInline(cid, img);
            }
        }

        // 添加附件
        if (null != mailInfo.getAttachments()) {
            for (Iterator<Map.Entry<String, String>> it = mailInfo.getAttachments().entrySet().iterator(); it.hasNext(); ) {
                Map.Entry<String, String> entry = it.next();
                String cid = entry.getKey();
                String filePath = entry.getValue();
                if (null == cid || null == filePath) {
                    throw new RuntimeException("请确认每个附件的ID和地址是否齐全！");
                }

                File file = new File(filePath);
                if (!file.exists()) {
                    throw new RuntimeException("附件" + filePath + "不存在！");
                }

                FileSystemResource fileResource = new FileSystemResource(file);
                String attchFileName = MimeUtility.encodeText(cid);//避免中文乱码
                messageHelper.addAttachment(attchFileName, fileResource);
            }
        }

        Properties prop = new Properties();
        prop.put("mail.smtp.auth", "true"); // 将这个参数设为true，让服务器进行认证,认证用户名和密码是否正确
        prop.put("mail.smtp.timeout", "25000");



        // 添加验证
        MailAuthenticator auth = new MailAuthenticator(mailInfo.getEmailUserName(), mailInfo.getEmailPassword());
        Session session = Session.getDefaultInstance(prop, auth);
//        session.setDebug(true);//有了这句便可以在发送邮件的过程中在console处显示过程信息，供调试使用（你可以在控制台（console)上看到发送邮件的过程）
        senderImpl.setSession(session);
        senderImpl.send(mailMessage);// 发送邮件
        System.out.println("邮件发送成功！");
    }


}


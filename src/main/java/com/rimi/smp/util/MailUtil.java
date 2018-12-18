package com.rimi.smp.util;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

/**
 * @author 惜-梦
 * @description 邮箱验证码工具类
 * @date 2018-12-14 17:12
 */
public class MailUtil {
    static Properties properties;
    static Message msg;
    static Transport transport;
    //初始化Mail信息
    {
        properties = new Properties();

        properties.setProperty("mail.debug", "true");//调试模式发送
        properties.setProperty("mail.smtp.auth", "true");//身份验证设置
        properties.setProperty("mail.host", "smtp.163.com");//发件人邮箱主机名
        properties.setProperty("mail.transport.protocol", "smtp");//发件协议

        Session session = Session.getInstance(properties);

        msg = new MimeMessage(session);

        try {
            msg.setSubject("smp音乐分享网站验证邮件");
            //设置发件人
            msg.setFrom(new InternetAddress("smp_music@163.com"));

            transport = session.getTransport();
            //设置发件人在该邮箱主机上的用户名密码
            transport.connect("smp_music@163.com", "qwert8520");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
    /**
     * 得到邮箱地址邮箱内容发送。
     * @param address 邮箱地址
     * @param text 邮箱内容
     * @throws AddressException
     * @throws MessagingException
     */

    public void sendMail(String address ,String text){
        new Thread(() -> {
            try {
                msg.setText(text);
                transport.sendMessage(msg, new Address[] {new InternetAddress(address)});
            } catch (MessagingException e) {
                e.printStackTrace();
            } finally {
                try {
                    transport.close();
                } catch (MessagingException e) {
                    e.printStackTrace();
                }
            }
        }).start();

    }

}

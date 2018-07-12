package com.rce.ssm.controller.user;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import com.rce.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
public class UserEmailController {

    @Autowired
    UserService userService;


    //跳转个人首页首页
    @RequestMapping("active")
    public String active(HttpServletRequest request) {

        String code = request.getParameter("code");

        userService.active(code);

        return "redirect:/login/index";
    }

    public static void sendActiveEmail(String code, String email) {
        try {
            Properties props = new Properties();
            props.put("username", "firstmetcs@163.com");
            props.put("password", "fancs961128");
            props.put("mail.transport.protocol", "smtp");
            props.put("mail.smtp.host", "smtp.163.com");
            props.put("mail.smtp.port", "465");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");  //使用JSSE的SSL socketfactory来取代默认的socketfactory
            props.put("mail.smtp.socketFactory.fallback", "false");  // 只处理SSL的连接,对于非SSL的连接不做处理

            Session mailSession = Session.getDefaultInstance(props);

            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress("firstmetcs@163.com"));
            msg.addRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            msg.setSubject("激活邮件");
            msg.setContent("<h1>此邮件为官方激活邮件！请点击下面链接完成激活操作！</h1><h3><a href='http://localhost:8080/rcestore/user/active?code=" + code + "'>http://www.firstmetcs.com/bbs/SendMail/user/active</a></h3>", "text/html;charset=UTF-8");
            msg.saveChanges();

            Transport transport = mailSession.getTransport("smtp");
            transport.connect(props.getProperty("mail.smtp.host"), props
                    .getProperty("username"), props.getProperty("password"));
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
    }

    public static void sendVerifyCodeEmail(String code, String email) {
        try {
            Properties props = new Properties();
            props.put("username", "firstmetcs@163.com");
            props.put("password", "fancs961128");
            props.put("mail.transport.protocol", "smtp");
            props.put("mail.smtp.host", "smtp.163.com");
            props.put("mail.smtp.port", "465");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");  //使用JSSE的SSL socketfactory来取代默认的socketfactory
            props.put("mail.smtp.socketFactory.fallback", "false");  // 只处理SSL的连接,对于非SSL的连接不做处理

            Session mailSession = Session.getDefaultInstance(props);

            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress("firstmetcs@163.com"));
            msg.addRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            msg.setSubject("验证邮件");
            msg.setContent("本次验证的验证码为：<strong>" + code + "</strong><br>请尽快完成验证", "text/html;charset=UTF-8");
            msg.saveChanges();

            Transport transport = mailSession.getTransport("smtp");
            transport.connect(props.getProperty("mail.smtp.host"), props
                    .getProperty("username"), props.getProperty("password"));
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
    }
}
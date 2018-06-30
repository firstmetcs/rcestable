package com.rce.ssm.controller.index;

import com.rce.ssm.model.User;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.Tool;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/*
 * 忘记密码
 *
 */
@Controller
@RequestMapping("/forget")
public class ForgetController {

    @Autowired
    UserService userService;

    private static Logger log = Logger.getLogger(ForgetController.class);

    //跳转找回密码页面
    @RequestMapping("index")
    public String toindex(HttpServletRequest request, HttpServletResponse response) {
        return "forget";
    }
    //
    @RequestMapping("password")
    public String password(HttpServletRequest request,HttpServletResponse response) {

        User tempuser = new User();
        tempuser.setCode((String)request.getParameter("code"));
        System.out.println((String)request.getParameter("code"));
        User usersession = userService.findbycode(tempuser);

        if(usersession == null){
            return "redirect:error.jsp";
        }

        request.getSession().setAttribute("repassuser", usersession);


        return "repass";
    }

    //修改密码
    @ResponseBody
    @RequestMapping("setpass")
    public Map<String, String> add(HttpServletRequest request, HttpServletResponse response, User user) {
        Map<String, String> jsonmap=new HashMap<String, String>();
        String flag="1";
        String msg="修改密码成功!";
        HttpSession session = request.getSession(true);
        if(user.getLoginpwd().length()<6){
            flag="0";
            msg="密码小于6位！";
        }else{

            User sessionuser=(User)request.getSession().getAttribute("repassuser");
            sessionuser.setLoginpwd(Tool.MD5(user.getLoginpwd()));
            sessionuser.setCode(Tool.getUUID());
            userService.updateByPrimaryKeySelective(sessionuser);
        }
        jsonmap.put("flag", flag);
        jsonmap.put("msg", msg);
        return jsonmap;
    }


    //验证邮箱
    @ResponseBody
    @RequestMapping("checkemail")
    public String checkemail(HttpServletRequest request,User user) {
        System.out.println("checkemail");
        User tempuser=userService.getuser(user.getLoginname());
        String flag="1";
        if(tempuser.getUseremail().equals(user.getUseremail())){
            if(tempuser.getUserstatus()==1){
                flag="0";
            }
            else{
                flag="2";
            }
        }
        System.out.println("flag:"+flag);
        return flag;
    }

    @RequestMapping("repass")
    public String repass(HttpServletRequest request) {
        User tempuser=userService.getuser(request.getParameter("loginname"));
        try {
            Properties props = new Properties();
            props.put("username", "firstmetcs@163.com");
            props.put("password", "fancs961128");
            props.put("mail.transport.protocol", "smtp" );
            props.put("mail.smtp.host", "smtp.163.com");
            props.put("mail.smtp.port", "465" );
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");  //使用JSSE的SSL socketfactory来取代默认的socketfactory
            props.put("mail.smtp.socketFactory.fallback", "false");  // 只处理SSL的连接,对于非SSL的连接不做处理

            Session mailSession = Session.getDefaultInstance(props);

            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress("firstmetcs@163.com"));
            msg.addRecipients(Message.RecipientType.TO, InternetAddress.parse(tempuser.getUseremail()));
            msg.setSubject("找回密码邮件");
            msg.setContent("<h1>此邮件为找回密码邮件！请点击下面链接完成找回密码操作！</h1><h3><a href='http://www.firstmetcs.com/bbs/forget/password.do?code="+tempuser.getCode()+"'>http://www.firstmetcs.com/bbs/SendMail/user/repass</a></h3>","text/html;charset=UTF-8");
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

        return "login";
    }

}

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
@RequestMapping("/index")
public class IndexController {

    private static Logger log = Logger.getLogger(IndexController.class);

    //跳转找回密码页面
    @RequestMapping("advertise")
    public String advertise(HttpServletRequest request, HttpServletResponse response) {
        return "advertise";
    }

    //跳转找回密码页面
    @RequestMapping("openPlatform")
    public String openPlatform(HttpServletRequest request, HttpServletResponse response) {
        return "openPlatform";
    }

}

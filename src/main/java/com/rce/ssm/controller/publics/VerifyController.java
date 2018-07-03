package com.rce.ssm.controller.publics;

import com.rce.ssm.controller.user.UserEmailController;
import com.rce.ssm.model.User;
import com.rce.ssm.service.LoginAreaService;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.VerifyCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/verify")
public class VerifyController {


    @Resource
    private LoginAreaService loginAreaService;

    @RequestMapping("index")
    public String findAllWhere(HttpServletRequest request, Model model, String pathlocation) {

        //生成随机字串
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
        //存入会话session
        HttpSession session = request.getSession(true);
        //删除以前的
        session.removeAttribute(PublicStatic.VERIFYCODE);
        session.setAttribute(PublicStatic.VERIFYCODE, verifyCode.toLowerCase());
        System.out.println(verifyCode+"1111111111111111111111111111");

        UserEmailController.sendVerifyCodeEmail(verifyCode, ((User) request.getSession().getAttribute(PublicStatic.UNSAFEUSER)).getUseremail());

        model.addAttribute("pathlocation",pathlocation);

        return "loginVerify";
    }

    //验证验证码
    @ResponseBody
    @RequestMapping("isVerifyCode")
    public int isVerifyCode(HttpServletRequest request, String verifyCode) {
        HttpSession session = request.getSession(true);
        String verifyCodeSession = (String) session.getAttribute(PublicStatic.VERIFYCODE);
        int flag = 0;
        if (verifyCodeSession != null && verifyCodeSession.equalsIgnoreCase(verifyCode)) {
            flag = 1;
        }
        return flag;
    }
}

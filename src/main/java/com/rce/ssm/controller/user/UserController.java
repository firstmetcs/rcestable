package com.rce.ssm.controller.user;

import com.rce.ssm.model.User;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.PublicStatic;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Firstmetcs on 2018/6/8.
 */

@Controller
@RequestMapping("/user")
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping("/showUser")
    public String showUser(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList",userList);
        return "showUser";
    }

    @RequestMapping("/index")
    public String index(HttpServletRequest request, Model model){
        log.info("主页");

        return "userinfo";
    }

    //退出
    @RequestMapping("logout")
    public String logout(HttpServletRequest request,HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.invalidate();
        Cookie[] cookies=request.getCookies();
        for(Cookie cookie: cookies){
            cookie.setMaxAge(0);
            cookie.setPath("/");
            response.addCookie(cookie);
        }
        return "redirect:/";
    }

    //修改个人资料
    @RequestMapping("update")
    public String update(HttpServletRequest request,HttpServletResponse response,User user) {
        User sessionuser=(User)request.getSession().getAttribute(PublicStatic.USER);
        user.setUserid(sessionuser.getUserid());
        userService.updateByPrimaryKeySelective(user);
        user=userService.findbyuserid(sessionuser.getUserid());
        request.getSession().setAttribute(PublicStatic.USER, user);
        return "redirect:/user/index";
    }
}

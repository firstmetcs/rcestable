package com.rce.ssm.controller.index;

import com.rce.ssm.controller.user.UserController;
import com.rce.ssm.controller.user.UserEmailController;
import com.rce.ssm.model.User;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.Tool;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/register")
public class RegisterController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping("/index")
    public String index(HttpServletRequest request, Model model){
        log.info("注册页面");
        return "index/register";
    }

    @ResponseBody
    @RequestMapping("/add")
    public Map<String, String> add(HttpServletRequest request, Model model, User user){
        log.info("注册");
        Map<String, String> jsonmap=new HashMap<String, String>();
        String flag="1";
        String msg="注册成功!";
        if(user.getLoginpwd().length()<6){
            flag="0";
            msg="密码小于6位！";
        }else{
            user.setLoginname(Tool.getUUID().substring(0,10));
            user.setCode(Tool.getUUID());
            user.setUserstatus(0);
            user.setLastip(Tool.getIp(request));
//            user.setLasttime(Tool.getyyyyMMdd());
            user.setCreatetime(Tool.getDate());
            user.setLasttime(Tool.getDate());
            user.setLoginpwd(Tool.MD5(user.getLoginpwd()));
            UserEmailController.sendActiveEmail(user.getCode(),user.getUseremail());
            userService.insertSelective(user);
        }
        jsonmap.put("flag", flag);
        jsonmap.put("msg", msg);
        return jsonmap;
    }

    @RequestMapping("/is")
    public String showUser(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");
        String msg = "";
        msg = userService.existByEmail("test@qq.com");
        model.addAttribute("msg",msg);
        return "test";
    }

    @ResponseBody
    @RequestMapping("/exist")
    public String exist(HttpServletRequest request,User user) {
        String flag=userService.existByEmail(user.getUseremail());
        System.out.printf(user.getUseremail());
        return flag;
    }
}

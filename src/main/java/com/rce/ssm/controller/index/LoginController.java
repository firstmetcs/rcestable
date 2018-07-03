package com.rce.ssm.controller.index;

import com.alibaba.fastjson.JSON;
import com.rce.ssm.model.*;
import com.rce.ssm.service.*;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import com.rce.ssm.utils.AddressUtilData;
import com.rce.ssm.utils.AddressUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UserService userService;
    @Autowired
    LoginRecordService loginRecordService;
    @Resource
    private ShoppingCartService shoppingCartService;
    @Resource
    private CityService cityService;
    @Resource
    private LoginAreaService loginAreaService;


    private static Logger log = Logger.getLogger(LoginController.class);

    //修改或者新增
    @RequestMapping("index")
    public String toindex(HttpServletRequest request, HttpServletResponse response, Model model, String pathlocation) {
        model.addAttribute("pathlocation", pathlocation);
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                String name = cookie.getName();
                if ("javaeelogin".equals(name)) {
                    String value = cookie.getValue();
                    User user = new User();
                    user.setCookieid(value);
                    List<User> list = userService.find(user);
                    if (list.size() > 0) {
                        User usersession = list.get(0);
                        request.getSession().setAttribute(PublicStatic.USER, usersession);

                        List<ShoppingCart> shoppingCarts = shoppingCartService.selectByUserId(usersession.getUserid());
                        request.getSession().setAttribute(PublicStatic.SHOPPINGCARTS,shoppingCarts);
                        BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
                        request.getSession().setAttribute("total",total==null?"0":String.valueOf(total));

                        Cookie c = new Cookie("login", usersession.getCookieid());
                        c.setMaxAge(60 * 60 * 24 * 14);
                        c.setPath("/");
                        response.addCookie(c);
                        if (pathlocation != null && !"".equals(pathlocation)) {
                            try {
                                response.sendRedirect(pathlocation);
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        } else {
                            return "redirect:/";
                        }
                    }
                }
            }
        }
//        if (Tool.ismobile(request)) {
//            return "jsp/mobile/login";
//        } else {
//            return "jsp/index/login";
//        }
        return "login";
    }

    //登录
    @ResponseBody
    @RequestMapping("login")
    public Map<String, String> login(HttpServletRequest request, HttpServletResponse response, User user, String pathlocation) {
        log.info("登录");
        Map<String, String> map = new HashMap<String, String>();
        String flag = "0";
        String msg = "0";

        flag = userService.login(user, request);
        if (pathlocation != null && !"".equals(pathlocation)) {
            map.put("pathlocation", pathlocation);
        } else {
            map.put("pathlocation", request.getContextPath() + "/user/index");
        }
        if (flag.equals("1")) {
            User usersession = (User) request.getSession().getAttribute(PublicStatic.USER);

            //记录登陆信息
            LoginRecord loginRecord = new LoginRecord();
            loginRecord.setUserid(usersession.getUserid());
            loginRecord.setLogintime(Tool.getDate());
            loginRecord.setLoginip(Tool.getIp(request));
            loginRecord.setLoginsrc(1);
            loginRecord.setLoginremark("Normal");
            loginRecordService.insertSelective(loginRecord);

            List<ShoppingCart> shoppingCarts = shoppingCartService.selectByUserId(usersession.getUserid());
            request.getSession().setAttribute(PublicStatic.SHOPPINGCARTS,shoppingCarts);
            BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
            request.getSession().setAttribute("total",total==null?"0":String.valueOf(total));

            if (user.isIsremember()) {
                Cookie cookie = new Cookie("javaeelogin", usersession.getCookieid());
                cookie.setMaxAge(60 * 60 * 24 * 14);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
        }
        System.out.println(map.get("pathlocation"));
        map.put("flag", flag);
        map.put("msg", msg);
        return map;
    }

    @RequestMapping("success")
    public String success(HttpServletRequest request, HttpServletResponse response, User user, String pathlocation) {
        log.info("登录");

        User usersession = (User) request.getSession().getAttribute(PublicStatic.UNSAFEUSER);

        AddressUtilData add = null;
        try {
            add = JSON.parseObject(AddressUtils.getAddresses("ip=" + Tool.getIp(request), "utf-8"), AddressUtilData.class);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        City city = cityService.selectByIp(add.getData());

        if (city != null) {

            LoginArea loginArea = new LoginArea();
            loginArea.setUserid(usersession.getUserid());
            loginArea.setCityid(city.getId());

            loginAreaService.insertSelective(loginArea);
        } else {
            System.out.println("cant find");
        }

        request.getSession().setAttribute(PublicStatic.USER, usersession);

        List<ShoppingCart> shoppingCarts = shoppingCartService.selectByUserId(usersession.getUserid());
        request.getSession().setAttribute(PublicStatic.SHOPPINGCARTS, shoppingCarts);
        BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
        request.getSession().setAttribute("total", total == null ? "0" : String.valueOf(total));

        if (pathlocation == null || "".equals(pathlocation)) {
            pathlocation = request.getContextPath() + "/user/index";
        }

        return "redirect: " + pathlocation;
    }
}

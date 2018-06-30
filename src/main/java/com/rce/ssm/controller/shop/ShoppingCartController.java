package com.rce.ssm.controller.shop;

import com.rce.ssm.model.ShoppingCart;
import com.rce.ssm.model.User;
import com.rce.ssm.service.ShoppingCartService;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.PublicStatic;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Firstmetcs on 2018/6/8.
 */

@Controller
@RequestMapping("/shoppingCart")
public class ShoppingCartController {

    private Logger log = Logger.getLogger(ShoppingCartController.class);
    @Resource
    private ShoppingCartService shoppingCartService;

    @RequestMapping("/showSC")
    public String showSC(HttpServletRequest request, Model model){
        log.info("查询购物车信息");
//        User usersession = (User)request.getSession().getAttribute(PublicStatic.USER);

        return "sc";
    }

    @ResponseBody
    @RequestMapping("/change")
    public Map<String, String> change(HttpServletRequest request, Model model, ShoppingCart sc){
        log.info("更新购物车");

        Map<String, String> map = new HashMap<String, String>();
        User usersession = (User)request.getSession().getAttribute(PublicStatic.USER);
        Integer result = shoppingCartService.updateByPrimaryKeySelective(sc);
        map.put("result",result.toString());
//        BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
//        map.put("total",total==null?"0":String.valueOf(total));

        return map;
    }
}

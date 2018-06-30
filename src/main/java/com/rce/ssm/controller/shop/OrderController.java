package com.rce.ssm.controller.shop;

import com.rce.ssm.model.*;
import com.rce.ssm.service.*;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Firstmetcs on 2018/6/8.
 */

@Controller
@RequestMapping("/order")
public class OrderController {

    private Logger log = Logger.getLogger(OrderController.class);
    @Resource
    private ShoppingCartService shoppingCartService;
    @Resource
    private AddressService addressService;
    @Resource
    private OrderService orderService;
    @Resource
    private OrderGoodsService orderGoodsService;

    @RequestMapping("/index")
    public String index(HttpServletRequest request, Model model) {
        log.info("查询所有用户信息");

        User usersession = (User)request.getSession().getAttribute(PublicStatic.USER);
        BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
        request.getSession().setAttribute("total",total==null?"0":String.valueOf(total));
        request.getSession().setAttribute(PublicStatic.SHOPPINGCARTS,shoppingCartService.selectByUserId(usersession.getUserid()));

        User sessionuser = (User) request.getSession().getAttribute(PublicStatic.USER);
        List<Address> addressList = addressService.selectByUserId(sessionuser.getUserid());

        model.addAttribute("addressList", addressList);

        return "suborder";
    }

    @RequestMapping("/submit")
    public String submit(HttpServletRequest request, Model model, Order order) {
        log.info("查询所有用户信息");

        String uniNo = Tool.getyyyyMMddHHmmssSSS() + "0" + ((User) request.getSession().getAttribute(PublicStatic.USER)).getUserid() + "0" + Tool.getRandom();

        //提交订单
        order.setCreattime(Tool.getDate());
        order.setUserid(((User) request.getSession().getAttribute(PublicStatic.USER)).getUserid());
        order.setOrderno(uniNo);
        order.setOrderstatus(1);
        order.setTotalmoney(BigDecimal.valueOf(Double.valueOf((String) request.getSession().getAttribute("total"))));
        order.setRealtotalmoney(BigDecimal.valueOf(Double.valueOf((String) request.getSession().getAttribute("total")) + 5));
        order.setDelivermoney(BigDecimal.valueOf(5));
        order.setIspay(0);
        order.setIsrefund(0);
        order.setIsappraises(0);

        orderService.insertSelective(order);

        //订单分表
        List<ShoppingCart> shoppingCarts = (List<ShoppingCart>) request.getSession().getAttribute(PublicStatic.SHOPPINGCARTS);

        for (ShoppingCart shoppingCart :
                shoppingCarts) {
            OrderGoods orderGoods = new OrderGoods();
            orderGoods.setOrderid(order.getOrderid());
            orderGoods.setGoodsid(shoppingCart.getGoodsid());
            orderGoods.setGoodsattrid(shoppingCart.getGoodsattrid());
            orderGoods.setGoodsnums(shoppingCart.getGoodscount());
            orderGoods.setGoodsprice(shoppingCart.getGoodsprice().longValue());
            orderGoodsService.insertSelective(orderGoods);
        }


        //删除购物车

        shoppingCartService.deleteByUserId(((User) request.getSession().getAttribute(PublicStatic.USER)).getUserid());

        //修改库存


        return "redirect: success";
    }

    @RequestMapping("/success")
    public String success(HttpServletRequest request, Model model) {
        log.info("查询所有用户信息");

        User usersession = (User) request.getSession().getAttribute(PublicStatic.USER);
        BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
        request.getSession().setAttribute("total", total == null ? "0" : String.valueOf(total));
        request.getSession().setAttribute(PublicStatic.SHOPPINGCARTS, shoppingCartService.selectByUserId(usersession.getUserid()));

        return "success";
    }
}

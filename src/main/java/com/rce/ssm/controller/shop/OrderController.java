package com.rce.ssm.controller.shop;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rce.ssm.model.*;
import com.rce.ssm.model.goods.ExpressDatas;
import com.rce.ssm.model.goods.GoodsEvaluate;
import com.rce.ssm.quartz.OrderJob;
import com.rce.ssm.quartz.QuartzManager;
import com.rce.ssm.service.*;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import com.rce.ssm.tool.kuaidi100;
import net.sf.json.JSONArray;
import org.apache.log4j.Logger;
import org.quartz.DateBuilder;
import org.quartz.SchedulerException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.text.ParseException;
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
        log.info("提交订单页面");

        User usersession = (User) request.getSession().getAttribute(PublicStatic.USER);
        BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
        request.getSession().setAttribute("total", total == null ? "0" : String.valueOf(total));
        request.getSession().setAttribute(PublicStatic.SHOPPINGCARTS, shoppingCartService.selectByUserId(usersession.getUserid()));

        User sessionuser = (User) request.getSession().getAttribute(PublicStatic.USER);
        List<Address> addressList = addressService.selectByUserId(sessionuser.getUserid());

        model.addAttribute("addressList", addressList);

        return "suborder";
    }

    @ResponseBody
    @RequestMapping("/submit")
    public String submit(HttpServletRequest request, Model model, Order order) {
        log.info("提交订单");

        String uniNo = Tool.getyyyyMMddHHmmssSSS() + "0" + ((User) request.getSession().getAttribute(PublicStatic.USER)).getUserid() + "0" + Tool.getRandom();

        //提交订单
        order.setCreattime(Tool.getDate());
        order.setUserid(((User) request.getSession().getAttribute(PublicStatic.USER)).getUserid());
        order.setOrderno(uniNo);
        order.setOrderstatus(0);
        order.setTotalmoney(BigDecimal.valueOf(Double.valueOf((String) request.getSession().getAttribute("total"))));
        order.setRealtotalmoney(BigDecimal.valueOf(Double.valueOf((String) request.getSession().getAttribute("total")) + 10));
        order.setDelivermoney(BigDecimal.valueOf(5));
        order.setIspay(0);
        order.setIsrefund(0);
        order.setIsappraises(0);

        orderService.insertSelective(order);
        System.out.println("orderId" + order.getOrderid());

        //订单分表
        List<ShoppingCart> shoppingCarts = (List<ShoppingCart>) request.getSession().getAttribute(PublicStatic.SHOPPINGCARTS);

        for (ShoppingCart shoppingCart :
                shoppingCarts) {
            if (shoppingCart.getIscheck()==1){
                OrderGoods orderGoods = new OrderGoods();
                orderGoods.setOrderid(order.getOrderid());
                orderGoods.setGoodsid(shoppingCart.getGoodsid());
                orderGoods.setGoodsattrid(shoppingCart.getGoodsattrid());
                orderGoods.setGoodsnums(shoppingCart.getGoodscount());
                orderGoods.setGoodsprice(shoppingCart.getGoodsprice().longValue());
                orderGoodsService.insertSelective(orderGoods);
            }
        }


        //删除购物车

        shoppingCartService.deleteByUserId(((User) request.getSession().getAttribute(PublicStatic.USER)).getUserid());

        //30分钟自动取消订单
        try {
            QuartzManager.addJob(order.getOrderid().toString(), new OrderJob(), 30, DateBuilder.IntervalUnit.MINUTE);
            QuartzManager.seeTime(order.getOrderid().toString());
        } catch (SchedulerException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }

        //修改库存


        return "1";
    }

    @RequestMapping("/success")
    public String success(HttpServletRequest request, Model model) {
        log.info("查询所有用户信息");

        User usersession = (User) request.getSession().getAttribute(PublicStatic.USER);
        BigDecimal total = shoppingCartService.getTotalPrice(usersession.getUserid());
        request.getSession().setAttribute("total", total == null ? "0" : String.valueOf(total));
        request.getSession().setAttribute(PublicStatic.SHOPPINGCARTS, shoppingCartService.selectByUserId(usersession.getUserid()));

        return "redirect: /order/OrList?userid=" + usersession.getUserid();
    }

    @RequestMapping("/OrList")
    public String showOrderList(HttpServletRequest request, ModelMap modelMap, @RequestParam(required = false, defaultValue = "1", value = "pageCode") int pageCode) {
        log.info("订单显示");
        int userid = Integer.parseInt(request.getParameter("userid"));
        PageHelper.startPage(pageCode, 4);
        List<OrderList> orderLists = orderService.getOrderList(userid);
        if (orderLists.size() > 0) {
            PageInfo<OrderList> pageInfo = new PageInfo<OrderList>(orderLists, 4);
            modelMap.addAttribute("orderLists", orderLists);
            modelMap.addAttribute("pageInfo", pageInfo);
            return "user/orderList";
        }
        if (orderLists.size() == 0) {
            PageInfo pageInfo = new PageInfo();
            modelMap.addAttribute("orderLists", orderLists);
            modelMap.addAttribute("pageInfo", pageInfo);
            return "user/orderList";
        }
        return null;
    }

    @ResponseBody
    @RequestMapping(value = "/cancelOrder", method = RequestMethod.POST)
    public String cancelOrder(String orderid) {
        log.info("取消订单");
        int orderId = Integer.parseInt(orderid);
        if (orderService.changeOrderStatusTo3(orderId) == 0)
            System.out.println("自动取消订单失败");
        return "yes";
    }

    @ResponseBody
    @RequestMapping(value = "/confirmReceipt", method = RequestMethod.POST)
    public String confirmReceipt(String orderid) {
        log.info("确认收货");
        int orderId = Integer.parseInt(orderid);
        if (orderService.changeOrderStatusTo2(orderId) == 0)
            System.out.println("确认收货失败");
        return "/yes";
    }

    @RequestMapping(value = "/evaluateGoods")
    public String evaluategoods(HttpServletRequest request, ModelMap modelMap) {
        log.info("商品评价");
        int orderId = Integer.parseInt(request.getParameter("ordersId"));
        //通过id查询订单
        List<OrderList> orderLists = orderService.SelectOrderById(orderId);
        modelMap.addAttribute("orders", orderLists);
        return "user/comment";
    }

    @ResponseBody
    @RequestMapping(value = "/submitEvaluate", method = RequestMethod.POST)
    public String submitEvaluate(String cons) {
        log.info("提交评价");
        JSONArray jsonArray = JSONArray.fromObject(cons);
        System.out.println(jsonArray);
        //转换成list数组
        List<GoodsEvaluate> goodsEvaluateList = JSONArray.toList(jsonArray, GoodsEvaluate.class);
        System.out.println(goodsEvaluateList);
        long orderid = goodsEvaluateList.get(0).getOrderId();
        int orderId = new Long(orderid).intValue();
        //更改订单支付状态
        if (orderService.ChangeEvaluateFlag(orderId) == 0)
            System.out.println("更新失败");
        //批量插入订单评价
        if (orderService.InsertGoodsEvaluateList(goodsEvaluateList) == 0)
            System.out.println("插入失败");
        return "yes";
    }

    @RequestMapping(value = "showEvaluate")
    public String showEvaluate(HttpServletRequest request, ModelMap modelMap) {
        log.info("查看所有评价");
        int userid = Integer.parseInt(request.getParameter("userid"));
        List<OrderList> orderLists = orderService.getOrderList(userid);
        modelMap.addAttribute("orders", orderLists);
        return "user/commentList";
    }

    @RequestMapping(value = "showInsurance")
    public String showInsurance(HttpServletRequest request, ModelMap modelMap) {
        log.info("意外险显示");
        int userid = Integer.parseInt(request.getParameter("userid"));
        modelMap.addAttribute("userid", userid);
        return "user/insurance";
    }

    @RequestMapping(value = "showOrderInfo")
    public String showOrderInfo(HttpServletRequest request, ModelMap modelMap) {
        log.info("订单详情");
        int orderid = Integer.parseInt(request.getParameter("orderid"));
        List<OrderList> orderGoods = orderService.SelectOrderById(orderid);
        List<Address> addresses = addressService.selectByUserId(((User) request.getSession().getAttribute(PublicStatic.USER)).getUserid());
        kuaidi100 kuaidi100 = new kuaidi100();
        ExpressDatas expressDatas = (ExpressDatas) JSON.parseObject(
                kuaidi100.getWuLiu(orderGoods.get(0).getExpresscompany(), orderGoods.get(0).getExpresscode()), ExpressDatas.class);
        if (Integer.parseInt(expressDatas.getStatus()) == 0)
            modelMap.addAttribute("expressStatus", 0);
        if (Integer.parseInt(expressDatas.getStatus()) == 1) {
            modelMap.addAttribute("expressDatas", expressDatas);
            modelMap.addAttribute("expressStatus", 1);
        }
        modelMap.addAttribute("orderGoods", orderGoods);
        modelMap.addAttribute("addresses", addresses);
        return "user/orderInfo";
    }


}

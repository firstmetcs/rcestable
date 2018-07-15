package com.rce.ssm.controller.goods;


import com.alibaba.fastjson.JSON;
import com.rce.ssm.model.Address;
import com.rce.ssm.model.User;
import com.rce.ssm.model.goods.*;
import com.rce.ssm.service.GoodsService;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.kuaidi100;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

/**
 * @author xinror
 * @discrition com.rce.ssm.controller.goods
 * @veisiong 1.0
 * @date 2018/6/30
 */

@Controller
@RequestMapping("/afterSale")
public class AfterSaleController {
    @Resource
    GoodsService goodsService;

    @RequestMapping("/returnGoods")
    public  ModelAndView returnGoods (HttpServletRequest req, HttpSession session, HttpServletResponse res) throws IOException,ServletException {
       /* int userId=Integer.parseInt(req.getParameter("userId")) ;
        int goodsId=Integer.parseInt(req.getParameter("goodsAttrId"));
        int orderId=Integer.parseInt(req.getParameter("orderId"));
        */
       // req.getRequestDispatcher("returngoodsInfo").forward(req, res);

        /*JSONObject json=JSONObject.fromObject(data);
        List<Map<String,String>> edit=(List<Map<String, String>>) json.getJSONArray("edit");
        System.out.println(edit);
        res.getWriter().print(edit);*/

      /*  ModelMap model=new ModelMap();
        model.addAttribute("userId",userId);
        model.addAttribute("goodsAttrId",goodsId);
        model.addAttribute("orderId",orderId);*/

       return new ModelAndView("user/returnInfo");

    }

    @RequestMapping("/doAfterSale")
    public ModelAndView doReturnGoods(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException{

        int userId=((User)req.getSession().getAttribute(PublicStatic.USER)).getUserid();
        Address address=goodsService.findUserInfo(userId);

        int goodsAttrId=Integer.parseInt(req.getParameter("goodsAttrId"));
        int orderId=Integer.parseInt(req.getParameter("orderId"));
        int goodsNum=1;

        GoodsAttributes goodsAttributes=goodsService.findGoodsAttrByAttrId(goodsAttrId);
        double goodsPrice=goodsAttributes.getGoodsPrice();
        String goodsImg="/rcestore/img/goodsAttr/"+goodsAttributes.getGoodsImage();
        long goodsId=goodsAttributes.getGoodsId();
        Goods goods=goodsService.findById(new Long(goodsId).intValue());
        String goodsName=goods.getGoodsName();

        ModelMap model=new ModelMap();
        model.addAttribute("address",address);
        model.addAttribute("goodsPrice",goodsPrice);
        model.addAttribute("orderId",orderId);
        model.addAttribute("goodsId",goodsId);
        model.addAttribute("goodsName",goodsName);
        model.addAttribute("goodsNum",goodsNum);
        model.addAttribute("goodsAttrId",goodsAttrId);
        model.addAttribute("goodsImg",goodsImg);

        return new ModelAndView("admin/afterSale/applyservice",model);
    }


   @RequestMapping("/addGoodsAfter")
   @ResponseBody
    public String addGoodsAfter(HttpServletRequest req) {

        GoodsAfterSale goodsA=new GoodsAfterSale();

        goodsA.setOrderId(Integer.parseInt(req.getParameter("orderId")));
        goodsA.setGoodsAttrId(Integer.parseInt(req.getParameter("goodsAttrId")));
        goodsA.setUserId(Integer.parseInt(req.getParameter("userId")));
       goodsA.setAfterSaleType(req.getParameter("type"));
       goodsA.setNum(Integer.parseInt(req.getParameter("num")));
       goodsA.setPostscript(req.getParameter("postscript"));
       goodsA.setReason(req.getParameter("reason"));


        goodsService.addGoodsAfterSale(goodsA);

        return req.getParameter("userId");

    }

   @RequestMapping("/updateAfterStatus")
   @ResponseBody
    public String updateReturnStatus(HttpServletRequest req){
        System.out.println("更改return状态");
        int status=Integer.parseInt(req.getParameter("status"));
        int id=Integer.parseInt(req.getParameter("afterSaleId"));
        System.out.println(id+" "+status);
        goodsService.updateAfterSaleStatus(id,status);
        return "修改成功";
    }

    @RequestMapping("/userAfterCenter")
    public ModelAndView useruserAfterCenter(HttpServletRequest req){

        int userId=Integer.parseInt(req.getParameter("userId"));
        List<Map<String,Object>> goodsAfterSaleList=goodsService.findAfterSaleByUserId(userId);

        ModelMap model=new ModelMap();
        model.addAttribute("goodsAfterSaleList",goodsAfterSaleList);

        return new ModelAndView("user/servicerecord",model);
    }

    @RequestMapping("/showWuliuInfo")
    public void showWuliuInfo(HttpServletRequest req){

        System.out.println("查看物流状态");

        String id=req.getParameter("id");
        String wuliu=req.getParameter("wuliu");

        System.out.println(id+" "+wuliu);

        kuaidi100 kuaidi=new kuaidi100();

        String wuLiu = kuaidi.getWuLiu(wuliu, id);
        System.out.println(wuLiu);
        ExpressDatas ed = (ExpressDatas) JSON.parseObject(
                kuaidi.getWuLiu(wuliu, id), ExpressDatas.class);
        System.out.println(ed);

        List<DataInfo> ls = ed.getData();

        Iterator it = ls.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }

    }


    @RequestMapping("/showGoodsAfterManage")
    public ModelAndView showGoodsAfterManage(HttpServletRequest req){

        List<GoodsAfterSale> goodsAfterSalesList=goodsService.getGoodsAfterSale();
        List<Map<String,Object>> goodsAfterSaleList2=new ArrayList<Map<String, Object>>();

        for(int i=0;i<goodsAfterSalesList.size();i++){
            String status="";
            String op="";
            String disable="";
            if(goodsAfterSalesList.get(i).getStatus()==0){

                status="未处理";
                op="待审核";
            }
            if(goodsAfterSalesList.get(i).getStatus()==1){

                status="已处理";
                op="已审核";
                disable="disabled";
            }
            Map<String,Object> map=new HashMap<String,Object>();

            map.put("status",status);
            map.put("op",op);
            map.put("disable",disable);
            map.put("goodsAfterSale",goodsAfterSalesList.get(i));

            goodsAfterSaleList2.add(map);
        }
        ModelMap model=new ModelMap();
        model.addAttribute("goodsAfterSaleList",goodsAfterSaleList2);

        return new ModelAndView("admin/afterSale/aftersales-application",model);
    }


}

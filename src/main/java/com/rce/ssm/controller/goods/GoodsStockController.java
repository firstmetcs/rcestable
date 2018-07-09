package com.rce.ssm.controller.goods;

import com.rce.ssm.model.goods.GoodsStock;
import com.rce.ssm.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author xinror
 * @discrition com.rce.ssm.controller.goods
 * @veisiong 1.0
 * @date 2018/7/3
 */

@Controller
@RequestMapping("/goodsStock")
public class GoodsStockController {
     @Resource
     GoodsService goodsService;
    @RequestMapping("/saveGoodsStock")
     public void  addGoodsStock(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {

         GoodsStock goodsStock=new GoodsStock();

         goodsStock.setGoodsType(req.getParameter("goodsType"));
         goodsStock.setGoodsName(req.getParameter("goodsName"));
         goodsStock.setGoodsRom(req.getParameter("goodsRom"));
         goodsStock.setGoodsRam(req.getParameter("goodsRam"));
         goodsStock.setGoodsColor(req.getParameter("goodsColor"));
         goodsStock.setGoodsSize(req.getParameter("goodsSize"));
         goodsStock.setStockNum(Integer.parseInt(req.getParameter("goodsNum")));

         goodsService.addGoodsStock(goodsStock);
        req.getRequestDispatcher("showGoodsStock").forward(req, res);

     }
     @RequestMapping("/showGoodsStock")
     public ModelAndView showGoodsStock(){
       List<GoodsStock > goodsStockList=goodsService.showGoodsStock();

       ModelMap model=new ModelMap();
       model.addAttribute("goodsStockList",goodsStockList);
       return new ModelAndView("admin/stock/goodsStock",model);
     }
     @RequestMapping("/addGoodsStock")
     public String addGoodsStock(){
        return "admin/stock/addGoodsStock";
     }

     @RequestMapping("/showSettle")
    public ModelAndView showSettle(HttpServletRequest req) throws ParseException {

       /* int year1= Integer.parseInt(req.getParameter("year1"));
        int month1=Integer.parseInt(req.getParameter("month1"));
         int day1= Integer.parseInt(req.getParameter("day1"));
         int year2=Integer.parseInt(req.getParameter("year2"));
         int month2= Integer.parseInt(req.getParameter("month2"));
         int day2=Integer.parseInt(req.getParameter("day2"));

         SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

         String dateStr1= year1+"-"+month1+"-"+day1;
         String dateStr2= year2+"-"+month2+"-"+day2;

         Date date1= df.parse(dateStr1);
         Date date2= df.parse(dateStr2);*/

         SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
         String dateStr1= "2018-02-01";
         String dateStr2="2018-03-30";

         Date date1= df.parse(dateStr1);
         Date date2= df.parse(dateStr2);

         List<Map<String,Object>>  settleList=goodsService.showSettle(date1,date2);

        ModelMap model=new ModelMap();
        model.addAttribute("settleList",settleList);

        return new ModelAndView("admin/stock/showSettle",model);
     }

     @RequestMapping("/showGoodsStockNum")
     public ModelAndView shoewGoodsStock(){

        List<Map<String,Object>> goodsAttrList=goodsService.showGoodsStockNum();
         ModelMap model=new ModelMap();
         model.addAttribute("goodsAttrList",goodsAttrList);

         return new ModelAndView("admin/stock/showGoodsStockNum",model);
     }

     @RequestMapping("/addStockList")
    public ModelAndView addStockList(HttpServletRequest req){

         List<List<Map<String, Object>>> goodsAllList=goodsService.selectGoodsByStep();

        ModelMap model=new ModelMap();
        model.addAttribute("goodsAllList",goodsAllList);

        return new ModelAndView("admin/stock/purchase-order",model);
     }

}

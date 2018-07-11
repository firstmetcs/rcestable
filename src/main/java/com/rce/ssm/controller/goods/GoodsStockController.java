package com.rce.ssm.controller.goods;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rce.ssm.model.goods.GoodsAttributes;
import com.rce.ssm.model.goods.GoodsStock;
import com.rce.ssm.service.GoodsService;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

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

    @RequestMapping("/addGoodsStock")
    @ResponseBody
    public String addGoodsStock(HttpServletRequest req )  {

        GoodsStock goodsStock = new GoodsStock();

        goodsStock.setGoodsType(req.getParameter("goodsType"));
        goodsStock.setGoodsName(req.getParameter("goodsName"));

        GoodsAttributes goodsAttributes=goodsService.findGoodsAttrByAttrId(Integer.parseInt(req.getParameter("goodsAttrId")));

        goodsStock.setStockNum(Integer.parseInt(req.getParameter("addNum")));
        goodsStock.setGoodsSize(goodsAttributes.getGoodsSize());
        goodsStock.setGoodsColor(goodsAttributes.getGoodsColor());
        goodsStock.setGoodsRam(goodsAttributes.getGoodsRam());
        goodsStock.setGoodsRom(goodsAttributes.getGoodsRom());
        goodsStock.setGoodsPrice(goodsAttributes.getGoodsPrice());
        goodsStock.setGoodsAttrId(req.getParameter("goodsAttrId"));
        double totalPrice=Integer.parseInt(req.getParameter("addNum"))*goodsAttributes.getGoodsPrice();
        goodsStock.setGoodsTotalPrice(totalPrice);
        goodsService.addGoodsStock(goodsStock);

        goodsAttributes.setGoodsStock(Integer.parseInt(req.getParameter("goodsNum")));
        goodsService.updateGoodsAttr(goodsAttributes);

        return "添加成功";
    }

    @RequestMapping("/showGoodsStock")
    public ModelAndView showGoodsStock() {
        List<GoodsStock> goodsStockList = goodsService.showGoodsStock();

        ModelMap model = new ModelMap();
        model.addAttribute("goodsStockList", goodsStockList);
        return new ModelAndView("admin/stock/Invoice-purchase", model);
    }

    @RequestMapping("/showSettleByType")
    public ModelAndView showSettle(HttpServletRequest req) throws ParseException {

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date());
        Date[] dateList=new Date[8];
        dateList[0]=df.parse(df.format(cal.getTime()));

        for(int i=1;i<8;i++) {
            cal.add(Calendar.WEDNESDAY, -1);
           // System.out.println(df.format(cal.getTime()));
            dateList[i] = df.parse(df.format(cal.getTime()));
        }
        for(int i=0;i<dateList.length;i++){
            System.out.println(dateList[i]);
        }
        List< List<Map<String, Object>>> allSettleList=new ArrayList<List<Map<String, Object>>>();
        for(int i=0;i<7;i++){
            List<Map<String, Object>> settleList = goodsService.showSettle(dateList[i+1], dateList[i]);
          //  System.out.println(settleList);
            allSettleList.add(settleList);
        }
       /* for(int i=0;i<allSettleList.size();i++){
            for(int j=0;j<allSettleList.get(i).size();j++){
                System.out.println(allSettleList.get(i).get(j).get("goodsType"));
                System.out.println(allSettleList.get(i).get(j).get("sum(settleNum)"));
            }
            System.out.println("-------------------时间分割-----------------------------");
        }*/

        ModelMap model = new ModelMap();
        model.addAttribute("allSettleList", allSettleList);

        return new ModelAndView("admin/stock/echarts-zigzag", model);
    }

    @RequestMapping("/showGoodsStockNum")
    public ModelAndView shoewGoodsStock(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
        PageHelper.startPage(pn,5);
        List<GoodsAttributes> goodsAttrListF = goodsService.showGoodsStockNum();
        PageInfo pageInfo = new PageInfo(goodsAttrListF,5);

        List<Map<String,Object>> goodsAttrList=goodsService.showGoodsStockNumWithType(goodsAttrListF);
        ModelMap model = new ModelMap();
        model.addAttribute("goodsAttrList", goodsAttrList);
        model.addAttribute("pageInfo",pageInfo);

        return new ModelAndView("admin/stock/Invoice-in-stock", model);
    }

    @RequestMapping("/addStockList")
    public String addStockList(HttpServletRequest req) {

        //   List<List<Map<String, Object>>> goodsAllList=goodsService.selectGoodsByStep();

        //  ModelMap model=new ModelMap();
        //  model.addAttribute("goodsAllList",goodsAllList);

        return "admin/stock/purchase-order";
    }

    @RequestMapping("/findPrice")
    @ResponseBody
    public String findGoodsPrice(HttpServletRequest req) {

        String rom = req.getParameter("goodsRom");
        String ram = req.getParameter("goodsRam");

        System.out.println(rom + " " + ram);
        String price = String.valueOf(goodsService.findGoodsPrice(rom, ram).get(0));
        System.out.println(price);
        return price;
    }

}

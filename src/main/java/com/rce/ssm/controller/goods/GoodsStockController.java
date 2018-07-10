package com.rce.ssm.controller.goods;

import com.rce.ssm.model.goods.GoodsStock;
import com.rce.ssm.service.GoodsService;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
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

    @RequestMapping("/saveGoodsStock")
    public void addGoodsStock(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {

        GoodsStock goodsStock = new GoodsStock();

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
    public ModelAndView showGoodsStock() {
        List<GoodsStock> goodsStockList = goodsService.showGoodsStock();

        ModelMap model = new ModelMap();
        model.addAttribute("goodsStockList", goodsStockList);
        return new ModelAndView("admin/stock/goodsStock", model);
    }

    @RequestMapping("/addGoodsStock")
    public String addGoodsStock() {
        return "admin/stock/addGoodsStock";
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
            dateList[i] = df.parse(df.format(cal.getTime()));
        }
        List< List<Map<String, Object>>> allSettleList=new ArrayList<List<Map<String, Object>>>();
        for(int i=0;i<7;i++){
            List<Map<String, Object>> settleList = goodsService.showSettle(dateList[i], dateList[i+1]);
            allSettleList.add(settleList);
        }

        ModelMap model = new ModelMap();
        model.addAttribute("allSettleList", allSettleList);

        return new ModelAndView("admin/stock/echarts-zigzag", model);
    }

    @RequestMapping("/showGoodsStockNum")
    public ModelAndView shoewGoodsStock() {

        List<Map<String, Object>> goodsAttrList = goodsService.showGoodsStockNum();
        ModelMap model = new ModelMap();
        model.addAttribute("goodsAttrList", goodsAttrList);

        return new ModelAndView("admin/stock/showGoodsStockNum", model);
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

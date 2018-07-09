package com.rce.ssm.controller.goods;


import com.alibaba.fastjson.JSON;
import com.rce.ssm.model.goods.*;
import com.rce.ssm.service.GoodsService;
import com.rce.ssm.tool.kuaidi100;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
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

    //note
    public  ModelAndView returnGoods (HttpServletRequest req, HttpSession session, HttpServletResponse res) throws IOException,ServletException {
        int userId=Integer.parseInt(req.getParameter("userId")) ;
        int goodsId=Integer.parseInt(req.getParameter("goodsAttrId"));
        int orderId=Integer.parseInt(req.getParameter("orderId"));


       // req.getRequestDispatcher("returngoodsInfo").forward(req, res);

        /*JSONObject json=JSONObject.fromObject(data);
        List<Map<String,String>> edit=(List<Map<String, String>>) json.getJSONArray("edit");
        System.out.println(edit);
        res.getWriter().print(edit);*/

        ModelMap model=new ModelMap();
        model.addAttribute("userId",userId);
        model.addAttribute("goodsAttrId",goodsId);
        model.addAttribute("orderId",orderId);

       return new ModelAndView("user/returnInfo",model);

    }

    @RequestMapping("/doAfterSale")
    public String doReturnGoods(HttpServletRequest req, HttpServletResponse res)throws IOException,ServletException{
            return "admin/afterSale/afterSale";
    }

    @RequestMapping("/addGoodsReturn")
    public ModelAndView addGoodsReturn(HttpServletRequest req) {

        GoodsReturn goodsR=new GoodsReturn();

       // System.out.println((req.getParameter("orderId")));
        /*goodsR.setUserId(Integer.parseInt(req.getParameter("userId")));
        goodsR.setGoodsAttrId(Integer.parseInt(req.getParameter("goodsAttrId")));
        goodsR.setOrderId(Integer.parseInt(req.getParameter("orderId")));
        goodsR.setPostscript(req.getParameter("info"));*/

        goodsR.setUserId(1);
        goodsR.setGoodsAttrId(2);
        goodsR.setOrderId(3);
        goodsR.setPostscript("info");

        goodsService.addGoodsReturn(goodsR);

        ModelMap model=new ModelMap();
        model.addAttribute("goodsReturn",goodsR);

        return new ModelAndView("user/returnApplyResult",model);


    }
    @RequestMapping("/showReturnManage")
    public ModelAndView showReturnManage(){

        List<GoodsReturn> goodsReturnList=goodsService.getGoodsReturn();
        List<Map<String,Object>> list= new ArrayList<Map<String, Object>>();
        for(int i=0;i<goodsReturnList.size();i++){
            Map<String,Object> map=new HashMap<String, Object>();
            if(goodsReturnList.get(i).getStatus()== 0){
                String str="未处理";
                map.put("status",str);

            }
            else if(goodsReturnList.get(i).getStatus()== 1){
                String str="已处理";
                map.put("status",str);
            }
            else {
                String str="已完成";
                map.put("status",str);
            }
            map.put("goodsReturn",goodsReturnList.get(i));
            list.add(map);
        }
        ModelMap model=new ModelMap();
        model.addAttribute("goodsReturnList",list);
        return new ModelAndView("admin/afterSale/returnGoodsManage",model);
    }

    @RequestMapping("/updateReturnStatus")
    public void updateReturnStatus(HttpServletRequest req){
        System.out.println("更改return状态");
        int status=Integer.parseInt(req.getParameter("data"));
        int id=Integer.parseInt(req.getParameter("step"))+1;
        System.out.println(id+" "+status);
         goodsService.updateReturnStatus(id,status);

    }

    @RequestMapping("/userCenter")
    public String userCenter(){
        return "user/userCenter";
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

    @RequestMapping("/changeGoods")
    public ModelAndView changeGoods(HttpServletRequest req) {

        int userId=Integer.parseInt(req.getParameter("userId")) ;
        int goodsId=Integer.parseInt(req.getParameter("goodsAttrId"));
        int orderId=Integer.parseInt(req.getParameter("orderId"));

        ModelMap model=new ModelMap();
        model.addAttribute("userId",userId);
        model.addAttribute("goodsAttrId",goodsId);
        model.addAttribute("orderId",orderId);

        return new ModelAndView("user/changeInfo",model);

    }
    @RequestMapping("/addGoodsChange")
    public ModelAndView addGoodsChange(HttpServletRequest req){
        GoodsChange goodsR=new GoodsChange();

        // System.out.println((req.getParameter("orderId")));
        goodsR.setUserId(Integer.parseInt(req.getParameter("userId")));
        goodsR.setGoodsAttrId(Integer.parseInt(req.getParameter("goodsAttrId")));
        goodsR.setOrderId(Integer.parseInt(req.getParameter("orderId")));
        goodsR.setPostscript(req.getParameter("info"));


        goodsService.addGoodsChange(goodsR);

        ModelMap model=new ModelMap();
        model.addAttribute("goodsChange",goodsR);


        return new ModelAndView("user/returnApplyResult",model);
    }

    @RequestMapping("/showChangeManage")
    public ModelAndView showChangeManage(){

        List<GoodsChange> goodsChangeList=goodsService.getGoodsChange();
        List<Map<String,Object>> list= new ArrayList<Map<String, Object>>();
        for(int i=0;i<goodsChangeList.size();i++){
            Map<String,Object> map=new HashMap<String, Object>();
            if(goodsChangeList.get(i).getStatus()== 0){
                String str="未处理";
                map.put("status",str);

            }
            else if(goodsChangeList.get(i).getStatus()== 1){
                String str="已处理";
                map.put("status",str);
            }
            else if(goodsChangeList.get(i).getStatus()== 2){
                String str="已发货";
                map.put("status",str);
            }
            else {
                String str="已完成";
                map.put("status",str);
            }
            map.put("goodsChange",goodsChangeList.get(i));
            list.add(map);
        }
        ModelMap model=new ModelMap();
        model.addAttribute("goodsChangeList",list);
        return new ModelAndView("admin/afterSale/changeGoodsManage",model);
    }

    @RequestMapping("/updateChangeStatus")
    public void updateChangeStatus(HttpServletRequest req){
        System.out.println("更改Change状态");
        int status=Integer.parseInt(req.getParameter("data"));
        int id=Integer.parseInt(req.getParameter("step"))+1;
        System.out.println(id+" "+status);
        goodsService.updateChangeStatus(id,status);

    }

    @RequestMapping("/repairGoods")
    public ModelAndView  repairGoods (HttpServletRequest req, HttpSession session, HttpServletResponse res) throws IOException,ServletException {
        int userId=Integer.parseInt(req.getParameter("userId")) ;
        int goodsId=Integer.parseInt(req.getParameter("goodsAttrId"));
        int orderId=Integer.parseInt(req.getParameter("orderId"));

        ModelMap model=new ModelMap();
        model.addAttribute("userId",userId);
        model.addAttribute("goodsAttrId",goodsId);
        model.addAttribute("orderId",orderId);

        return new ModelAndView("user/repairInfo",model);

    }

    @RequestMapping("/addGoodsRepair")
    public ModelAndView addGoodsRepair(HttpServletRequest req){
        GoodsRepair goodsR=new GoodsRepair();

        // System.out.println((req.getParameter("orderId")));
        goodsR.setUserId(Integer.parseInt(req.getParameter("userId")));
        goodsR.setGoodsAttrId(Integer.parseInt(req.getParameter("goodsAttrId")));
        goodsR.setOrderId(Integer.parseInt(req.getParameter("orderId")));
        goodsR.setPostscript(req.getParameter("info"));


        goodsService.addGoodsRepair(goodsR);

        ModelMap model=new ModelMap();
        model.addAttribute("goodsRepair",goodsR);


        return new ModelAndView("user/returnApplyResult",model);
    }

    @RequestMapping("/showRepairManage")
    public ModelAndView showRepairManage(){

        List<GoodsRepair> goodsRepairsList=goodsService.getGoodsRepair();
        List<Map<String,Object>> list= new ArrayList<Map<String, Object>>();

        for(int i=0;i<goodsRepairsList.size();i++){
            Map<String,Object> map=new HashMap<String, Object>();

            if(goodsRepairsList.get(i).getStatus()== 0){
                String str="未处理";
                map.put("status",str);

            }
            else if(goodsRepairsList.get(i).getStatus()== 1){
                String str="已处理";
                map.put("status",str);
            }
            else if(goodsRepairsList.get(i).getStatus()== 2){
                String str="修理完成";
                map.put("status",str);
            }
            else if(goodsRepairsList.get(i).getStatus()== 3){
                String str="已发货";
                map.put("status",str);
            }
            else {
                String str="已完成";
                map.put("status",str);
            }
            map.put("goodsRepair",goodsRepairsList.get(i));
            list.add(map);
        }

        ModelMap model=new ModelMap();
        model.addAttribute("goodsRepairList",list);
        return new ModelAndView("admin/afterSale/repairGoodsManage",model);
    }

    @RequestMapping("/updateRepairStatus")
    public void updateRepairStatus(HttpServletRequest req){
        System.out.println("更改Repair状态");
        int status=Integer.parseInt(req.getParameter("data"));
        int id=Integer.parseInt(req.getParameter("step"))+1;
        System.out.println(id+" "+status);

        goodsService.updateRepairStatus(id,status);

    }

}

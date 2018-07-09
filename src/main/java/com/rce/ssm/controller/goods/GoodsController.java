package com.rce.ssm.controller.goods;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.rce.ssm.model.goods.Goods;
import com.rce.ssm.model.goods.GoodsAttributes;
import com.rce.ssm.tool.UpLoadFile;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.rce.ssm.service.*;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.Map;

/**
 * @author xinror
 * @discrition com.rce.ssm.controller.Goods
 * @veisiong 1.0
 * @date 2018/6/13
 */

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Resource
    private GoodsService goodServiceImpl;
    @RequestMapping("/findGood")
    public ModelAndView getGoodsInfo(HttpServletRequest req) {

        int goodsId = Integer.parseInt(req.getParameter("goodsId"));
        Goods good = goodServiceImpl.findById(goodsId);
        List<Map<String, String>> colorList = goodServiceImpl.findColorCount(goodsId);
        List<Map<String, String>> RoamList = goodServiceImpl.findRoamCount(goodsId);
        List<Map<String, String>> descList = goodServiceImpl.findDescById(goodsId);

        ModelMap model = new ModelMap();
        model.addAttribute("goods", good);
        model.addAttribute("goodsColor", colorList);
        model.addAttribute("goodsRoam", RoamList);
        model.addAttribute("goodsDesc", descList);

        return new ModelAndView("goods/commodityInfo", model);

    }

    @RequestMapping("/showGoods")
    public ModelAndView showGoods(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {

        PageHelper.startPage(pn,5);
        List<Goods> goodsList = goodServiceImpl.findAll();
        PageInfo pageInfo = new PageInfo(goodsList,5);

        ModelMap model = new ModelMap();
        model.addAttribute("goodsList", goodsList);
        model.addAttribute("pageInfo",pageInfo);

        return new ModelAndView("admin/goodsManage/goods-list", model);

    }

    @RequestMapping("/showGoodsInfo")
    public ModelAndView showGoodsInfo(HttpServletRequest req,@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn) {
       int goodsId = Integer.parseInt(req.getParameter("goodsId"));
       String goodsName=req.getParameter("goodsName");
        PageHelper.startPage(pn,5);
        List<Map<String, Object>> goodsAttrList = goodServiceImpl.findGoodsInfo(goodsId);
        PageInfo pageInfo = new PageInfo(goodsAttrList,5);
        //System.out.println(goodsAttrList.size());
        //System.out.println(goodsAttrList.get(0).get("goodsAttrId"));
        // System.out.println(goodsAttrList.get(0).get("goodsPrice"));
        ModelMap model = new ModelMap();
        model.addAttribute("goodsAttrList", goodsAttrList);
        model.addAttribute("goodsId", goodsId);
        model.addAttribute("goodsName", goodsName);
        model.addAttribute("pageInfo",pageInfo);
        return new ModelAndView("admin/goodsManage/goods-list-attribute", model);
    }

    @RequestMapping("/addGoods")
    public ModelAndView addGoods(HttpServletRequest req) {
        return new ModelAndView("admin/goodsManage/goods-list-add");
    }
    @RequestMapping("/showDetailGoods")
    public ModelAndView showDetailGoods(HttpServletRequest req){
        int goodsId=Integer.parseInt(req.getParameter("goodsId"));
        Goods goods=goodServiceImpl.findById(goodsId);
        String[] screen=goods.getGoodsScreenDesc().split("#");
        String[] battery=goods.getGoodsBatteryDesc().split("#");
        String[] cpu=goods.getGoodsCPUDesc().split("#");
        String[] system=goods.getGoodsSystemDesc().split("#");
        String[] precamera=goods.getGoodsPreCameraDesc().split("#");
        String[] camera=goods.getGoodsCameraDesc().split("#");

        ModelMap model = new ModelMap();
        //System.out.println(goods.getGoodsAttrDesc());
        model.addAttribute("goods", goods);
        model.addAttribute("screen",screen);
        model.addAttribute("battery",battery);
        model.addAttribute("cpu",cpu);
        model.addAttribute("system",system);
        model.addAttribute("precamera",precamera);
        model.addAttribute("camera",camera);

        return new ModelAndView("admin/goodsManage/goods-list-detail",model);
    }

    @RequestMapping("/saveGoods")
    public void saveGoods(HttpServletRequest req, HttpServletResponse res,@RequestParam(required = false)MultipartFile pictureFile) throws ServletException, IOException {

        if(req.getParameter("goodsId") != null){

            Goods goods = new Goods();
            goods.setGoodsId(Integer.parseInt(req.getParameter("goodsId")));
            goods.setGoodsName(req.getParameter("goodsName"));
            System.out.println(req.getParameter("goodsName")+"0000000000000000000000");
            goods.setGoodsType(req.getParameter("goodsType"));
            goods.setGoodsTotalDesc(req.getParameter("goodsTotalDesc"));
            goods.setGoodsAttrDesc(req.getParameter("goodsAttrDesc"));
            goods.setGoodsSaleDesc(req.getParameter("goodsSaleDesc"));
            goods.setGoodsScreenDesc(req.getParameter("goodsScreenDesc1")+"#"+req.getParameter("goodsScreenDesc2"));
            goods.setGoodsBatteryDesc(req.getParameter("goodsBatteryDesc1")+"#"+req.getParameter("goodsBatteryDesc2"));
            goods.setGoodsPreCameraDesc(req.getParameter("goodsPreCameraDesc1")+"#"+req.getParameter("goodsPreCameraDesc2"));
            goods.setGoodsCameraDesc(req.getParameter("goodsCameraDesc1")+"#"+req.getParameter("goodsCameraDesc2"));
            goods.setGoodsCPUDesc(req.getParameter("goodsCPUDesc1")+"#"+req.getParameter("goodsCPUDesc2"));
            goods.setGoodsSystemDesc(req.getParameter("goodsSystemDesc1")+"#"+req.getParameter("goodsSystemDesc2"));
            goodServiceImpl.updateGoods(goods);
            req.getRequestDispatcher("showGoods").forward(req, res);
        }

       else {

            String ext=new UpLoadFile().upLoad(req,pictureFile,req.getParameter("goodsName"),0);

            Goods goods = new Goods();
            goods.setGoodsName(req.getParameter("goodsName"));
            goods.setGoodsType(req.getParameter("goodsType"));
            goods.setGoodsTotalDesc(req.getParameter("goodsTotalDesc"));
            goods.setGoodsAttrDesc(req.getParameter("goodsAttrDesc"));
            goods.setGoodsSaleDesc(req.getParameter("goodsSaleDesc"));
            goods.setGoodsScreenDesc(req.getParameter("goodsScreenDesc1")+"#"+req.getParameter("goodsScreenDesc2"));
            goods.setGoodsBatteryDesc(req.getParameter("goodsBatteryDesc1")+"#"+req.getParameter("goodsBatteryDesc2"));
            goods.setGoodsPreCameraDesc(req.getParameter("goodsPreCameraDesc1")+"#"+req.getParameter("goodsPreCameraDesc2"));
            goods.setGoodsCameraDesc(req.getParameter("goodsCameraDesc1")+"#"+req.getParameter("goodsCameraDesc2"));
            goods.setGoodsCPUDesc(req.getParameter("goodsCPUDesc1")+"#"+req.getParameter("goodsCPUDesc2"));
            goods.setGoodsSystemDesc(req.getParameter("goodsSystemDesc1")+"#"+req.getParameter("goodsSystemDesc2"));

            goods.setGoodsImg(ext);

            goodServiceImpl.addGoods(goods);

            System.out.println(goods.getGoodsImg());

            req.getRequestDispatcher("showGoods").forward(req, res);
        }
    }

    @RequestMapping("/updateGoodsInfo")
    public ModelAndView updateGoodsAttr(HttpServletRequest req) {
        int goodsAttrId = Integer.parseInt(req.getParameter("goodsAttrId"));
        String goodsName=req.getParameter("goodsName");
        GoodsAttributes goodsAttributes = goodServiceImpl.findGoodsAttrByAttrId(goodsAttrId);

        ModelMap model = new ModelMap();
        model.addAttribute("goodsAttributes", goodsAttributes);
        model.addAttribute("goodsName",goodsName);
        return new ModelAndView("admin/goodsManage/goods-list-attribute-edit", model);
    }

    @RequestMapping("/saveGoodsInfo")
    public void saveGoodsInfo(HttpServletRequest req, HttpServletResponse res,@RequestParam(required = false)MultipartFile pictureFile) throws ServletException, IOException {
        if (req.getParameter("goodsAttrId") != null) {

            int goodsAttrId = Integer.parseInt(req.getParameter("goodsAttrId"));
            String goodsName=req.getParameter("goodsName");
            GoodsAttributes goodsAttributes = goodServiceImpl.findGoodsAttrByAttrId(goodsAttrId);;
            long goodsId = goodsAttributes.getGoodsId();
            goodsAttributes.setGoodsRom(req.getParameter("goodsAttrRom"));
            goodsAttributes.setGoodsRam(req.getParameter("goodsAttrRam"));
            goodsAttributes.setGoodsColor(req.getParameter("goodsAttrColor"));
            goodsAttributes.setGoodsPrice(Float.parseFloat(req.getParameter("goodsAttrPrice")));
            goodsAttributes.setGoodsSize(req.getParameter("goodsAttrSize"));

            goodServiceImpl.updateGoodsAttr(goodsAttributes);
            req.getRequestDispatcher("showGoodsInfo?goodsId=" + goodsId +"&goodsName="+goodsName).forward(req, res);
        }
        if (req.getParameter("goodsId") != null) {
            int goodsId = Integer.parseInt(req.getParameter("goodsId"));
            String goodsName=req.getParameter("goodsName");
            String ext=new UpLoadFile().upLoad(req,pictureFile,goodsName,1);
            GoodsAttributes goodsAttributes = new GoodsAttributes();
            goodsAttributes.setGoodsId(goodsId);
            goodsAttributes.setGoodsRom(req.getParameter("goodsAttrRom"));
            goodsAttributes.setGoodsRam(req.getParameter("goodsAttrRam"));
            goodsAttributes.setGoodsColor(req.getParameter("goodsAttrColor"));
            goodsAttributes.setGoodsPrice(Float.parseFloat(req.getParameter("goodsAttrPrice")));
            goodsAttributes.setGoodsSize(req.getParameter("goodsAttrSize"));
            goodsAttributes.setGoodsImage(ext);
            goodServiceImpl.addGoodsInfo(goodsAttributes);
            req.getRequestDispatcher("showGoodsInfo?goodsId=" + goodsId+"&goodsName="+goodsName).forward(req, res);

        }
    }

    @RequestMapping("/deleteGoods")
    public void deleteGoods(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        goodServiceImpl.deleteGoods(Integer.parseInt(req.getParameter("goodsId")));
       req.getRequestDispatcher("showGoods").forward(req, res);

    }

    @RequestMapping("/deleteGoodsInfo")
    public void deleteGoodsInfo(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        long goodsId = goodServiceImpl.findGoodsAttrByAttrId(Integer.parseInt(req.getParameter("goodsAttrId"))).getGoodsId();
        goodServiceImpl.deleteGoodsInfo(Integer.parseInt(req.getParameter("goodsAttrId")));
        String goodsName=req.getParameter("goodsName");
        req.getRequestDispatcher("showGoodsInfo?goodsId=" + goodsId +"&goodsName="+goodsName).forward(req, res);
    }

    @RequestMapping("/addGoodsInfo")
    public ModelAndView addGoodsInfo(HttpServletRequest req) {
        int goodsId = Integer.parseInt(req.getParameter("goodsId"));
        String goodsName=req.getParameter("goodsName");
        ModelMap model = new ModelMap();
        model.addAttribute("goodsId", goodsId);
        model.addAttribute("goodsName", goodsName);
        return new ModelAndView("admin/goodsManage/goods-list-attribute-add", model);

    }

    @RequestMapping("/updateGoods")
    public ModelAndView updateGoods(HttpServletRequest req){
        int goodsId = Integer.parseInt(req.getParameter("goodsId"));
        Goods goods=goodServiceImpl.findById(goodsId);
        String[] screen=goods.getGoodsScreenDesc().split("#");
        String[] battery=goods.getGoodsBatteryDesc().split("#");
        String[] cpu=goods.getGoodsCPUDesc().split("#");
        String[] system=goods.getGoodsSystemDesc().split("#");
        String[] precamera=goods.getGoodsPreCameraDesc().split("#");
        String[] camera=goods.getGoodsCameraDesc().split("#");

        ModelMap model = new ModelMap();
        //System.out.println(goods.getGoodsAttrDesc());
        model.addAttribute("goods", goods);
        model.addAttribute("screen",screen);
        model.addAttribute("battery",battery);
        model.addAttribute("cpu",cpu);
        model.addAttribute("system",system);
        model.addAttribute("precamera",precamera);
        model.addAttribute("camera",camera);

        return new ModelAndView("admin/goodsManage/goods-list-edit", model);
    }

    @RequestMapping("/showPicture")
    public void showPicture(HttpServletRequest req,HttpServletResponse res){
        FileInputStream fis = null;
        OutputStream os = null;
        try {
            String url = req.getSession().getServletContext().getRealPath("/");

            String url2=url.substring(0,url.indexOf("target"));
            String url3=url2 +"src\\main\\webapp\\img";
            System.out.println(url3);

            fis = new FileInputStream(url3);
            os = res.getOutputStream();

            Thumbnails.of(url3).size(50,50).toOutputStream(os);

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                fis.close();
                os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    @RequestMapping("/showIndex")
    public ModelAndView showIndex() throws  IOException{
        List<List<Map<String,Object>>> goodsAllList=goodServiceImpl.findGoodsByType();
        List<Map<String,Object>> goodsTimeList=goodServiceImpl.findGoodsByTime();
        List<List<Map<String,Object>>> goodsPriceList=goodServiceImpl.findGoodsByPrice(2500,2500);

        ModelMap model=new ModelMap();
        model.addAttribute("goodsAllList",goodsAllList);
        model.addAttribute("goodsTimeList",goodsTimeList);
        model.addAttribute("goodsPriceList",goodsPriceList);
        return new ModelAndView("goods/index",model);

    }
    @RequestMapping("/batchDeleteGoods")
    @ResponseBody
    public String batchDeleteGoods(HttpServletRequest req){
        String deleteStr=req.getParameter("deleteStr");
        String[] goodsIdListStr=deleteStr.split("#");
        int[] goodsIdList=new int[goodsIdListStr.length];
        for(int i=0;i<goodsIdList.length;i++){
               goodsIdList[i]=Integer.parseInt(goodsIdListStr[i]);
        }
        for (int i=0;i<goodsIdList.length;i++){
            goodServiceImpl.deleteGoods(goodsIdList[i]);
        }
               return "批量删除成功" ;
    }

    @RequestMapping("/batchDeleteGoodsAttr")
    @ResponseBody
    public String batchDeleteGoodsAttr(HttpServletRequest req){
        String deleteStr=req.getParameter("deleteStr");
        String[] goodsAttrIdListStr=deleteStr.split("#");
        int[] goodsAttrIdList=new int[goodsAttrIdListStr.length];
        for(int i=0;i<goodsAttrIdList.length;i++){
            goodsAttrIdList[i]=Integer.parseInt(goodsAttrIdListStr[i]);
        }
        for (int i=0;i<goodsAttrIdList.length;i++){
            goodServiceImpl.deleteGoodsInfo(goodsAttrIdList[i]);
        }
        return "批量删除成功" ;
    }


          // goodServiceImpl.getGoodsRec();
}

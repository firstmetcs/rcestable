package com.rce.ssm.service.impl;

import com.rce.ssm.dao.*;
import com.rce.ssm.model.goods.*;
import com.rce.ssm.service.GoodsService;

import com.rce.ssm.tool.GoodsCorrelation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;


/**
 * @author xinror
 * @discrition com.rce.ssm.service.impl
 * @veisiong 1.0
 * @date 2018/6/13
 */
@Service
public class GoodServiceImpl implements GoodsService {
    @Autowired
    GoodsMapper goodsMapper;
    @Autowired
    GoodsAttrMapper goodsAttrMapper;

    @Autowired
    GoodsEvaluateMapper goodsEvaluateMapper;
    @Autowired
    GoodsRecMapper goodsRecMapper;
    @Autowired
    GoodsReturnMapper goodsReturnMapper;
    @Autowired
    GoodsChangeMapper goodsChangeMapper;
    @Autowired
    GoodsRepairMapper goodsRepairMapper;
    @Autowired
    GoodsStockMapper goodsStockMapper;
    @Autowired
    GoodsSettleMapper goodsSettleMapper;

    public Goods findById(int goodsId) {

        return goodsMapper.findById(goodsId);
    }

    public List<GoodsAttributes> findByGoodsId(int goodsId) {

        return goodsAttrMapper.findByGoodsId(goodsId);

    }

    public List<Map<String, String>> findColorCount(int goodsId) {
        List<Map<String, String>> colorList = goodsAttrMapper.findColorCount(goodsId);
        for (int i = 0; i < colorList.size(); i++) {
            String goodsImg = "/rcestore/img/goodsAttr/" + colorList.get(i).get("goodsImage");
            colorList.get(i).put("goodsImage", goodsImg);
        }

        return colorList;
    }

    public List<Map<String, String>> findRoamCount(int goodsId) {
        return goodsAttrMapper.findRoamCount(goodsId);
    }

    public List<Map<String, String>> findDescById(int goodId) {
        Goods good = goodsMapper.findDescById(goodId);

        List<String> listGoods = new ArrayList<String>();
        listGoods.add(good.getGoodsTotalDesc());
        listGoods.add(good.getGoodsScreenDesc());
        listGoods.add(good.getGoodsBatteryDesc());
        listGoods.add(good.getGoodsCPUDesc());
        listGoods.add(good.getGoodsPreCameraDesc());
        listGoods.add(good.getGoodsCameraDesc());
        listGoods.add(good.getGoodsSystemDesc());

        String img = good.getGoodsImg();
        String[] strImg = img.split("#");

        //  System.out.println(strImg[0]+strImg[6]);

        List<Map<String, String>> listDesc = new ArrayList<Map<String, String>>();

        String[] mapName = {"total", "screen", "battery", "cpu", "preCamera", "camera", "system"};

        for (int i = 0; i < listGoods.size(); i++) {
            String[] str = listGoods.get(i).split("#");
            Map map = new HashMap();
            for (int j = 1; j <= str.length; j++) {
                String s = mapName[i] + j;
                //System.out.println(s);
                map.put(s, str[j - 1]);
            }
            String strSImg = "/rcestore/img/goods/" + strImg[i];
            map.put("img", strSImg);
            //System.out.println(map.get("img"));
            listDesc.add(map);
            // System.out.println(listDesc.get(i).get("img"));

        }
        return listDesc;

    }

    public List<Goods> findAll() {
        return goodsMapper.findAll();
    }

    public List<Map<String, Object>> findGoodsInfo(int goodsId) {
        return goodsAttrMapper.findGoodsInfo(goodsId);
    }

    public void addGoods(Goods goods) {

        goods.setGoodsId(goodsMapper.findMaxGoodId() + 1);
        System.out.println(goodsMapper.findMaxGoodId() + 1);
        goods.setGoodsIsSale(1);
        goods.setGoodsStatus(1);
        goods.setGoodsIsNew(0);
        goods.setGoodsSaleTime(new Date());

        goodsMapper.insert(goods);
    }

    public GoodsAttributes findGoodsAttrByAttrId(int goodsAttrId) {
        return goodsAttrMapper.findGoodsAttrByAttrId(goodsAttrId);
    }

    public void updateGoodsAttr(GoodsAttributes ga) {
        goodsAttrMapper.update(ga);
    }

    public void deleteGoods(int goodsId) {
        goodsMapper.delete(goodsId);
    }

    public void deleteGoodsInfo(int goodsAttrId) {
        goodsAttrMapper.delete(goodsAttrId);
    }

    public void addGoodsInfo(GoodsAttributes ga) {

       ga.setGoodsNetType("支持移动/联通/电信 4G+/4G/3G/2G");
       ga.setGoodsStock(500);
       ga.setGoodsResRatio("2240*1081像素");
       ga.setGoodsVersion("全网通6G+64G");

       goodsAttrMapper.insert(ga);
    }

    public void updateGoods(Goods goods) {
        goodsMapper.update(goods);
    }

    public List<List<Map<String, Object>>> findGoodsByType() {

        List<String> typeList = goodsMapper.findType();
        /*for(int i=0;i<typeList.size();i++){
            System.out.println(typeList.get(i));

        }*/
        /*   System.out.println("--------------------------------");*/

        List<List<Map<String, Object>>> goodsAllList = new ArrayList<List<Map<String, Object>>>();

        for (int i = 0; i < typeList.size(); i++) {

            List<Map<String, Object>> goodsList = goodsMapper.findGoodsByType(typeList.get(i));
            goodsAllList.add(goodsList);
        }

        for (int i = 0; i < goodsAllList.size(); i++) {
            for (int j = 0; j < goodsAllList.get(i).size(); j++) {

                List<Map<String, Object>> MP = goodsAttrMapper.findMPBygoodsId(Integer.parseInt(goodsAllList.get(i).get(j).get("goodsId").toString()));
                goodsAllList.get(i).get(j).put("goodsPrice", MP.get(j).get("goodsPrice"));
                goodsAllList.get(i).get(j).put("goodsImage", "/rcestore/img/goodsAttr/" + MP.get(j).get("goodsImage"));
                // System.out.println(MP.get(j).get("goodsPrice")+" "+MP.get(j).get("goodsImage"));

            }
        }

/*
        for(int i=0;i<goodsAllList.size();i++){
            for(int j=0;j<goodsAllList.get(i).size();j++){

                System.out.println(goodsAllList.get(i).get(j).get("goodsId")+" "+
                        goodsAllList.get(i).get(j).get("goodsName")+" "+
                        goodsAllList.get(i).get(j).get("goodsType")+" "+
                        goodsAllList.get(i).get(j).get("goodsSaleTime")+" "+
                        goodsAllList.get(i).get(j).get("goodsPrice")+" "+
                        goodsAllList.get(i).get(j).get("goodsImage"));

            }
        }
        System.out.println("--------------------------------");*/


        return goodsAllList;
    }
    public  List<List<Map<String, Object>>>  selectGoodsByStep(){
        List<String> typeList = goodsMapper.findType();
        List<List<Map<String, Object>>> goodsAllList = new ArrayList<List<Map<String, Object>>>();

        for (int i = 0; i < typeList.size(); i++) {

            List<Map<String, Object>> goodsList = goodsMapper.findGoodsByType(typeList.get(i));
            goodsAllList.add(goodsList);
        }



        for (int i = 0; i < goodsAllList.size(); i++) {
            for (int j = 0; j < goodsAllList.get(i).size(); j++) {

                List<String> romList = goodsAttrMapper.findDistRom(Integer.parseInt(goodsAllList.get(i).get(j).get("goodsId").toString()));
                List<String> ramList = goodsAttrMapper.findDistRam(Integer.parseInt(goodsAllList.get(i).get(j).get("goodsId").toString()));
                List<String> colorList = goodsAttrMapper.findDistColor(Integer.parseInt(goodsAllList.get(i).get(j).get("goodsId").toString()));
                List<String> sizeList = goodsAttrMapper.findDistSize(Integer.parseInt(goodsAllList.get(i).get(j).get("goodsId").toString()));

                goodsAllList.get(i).get(j).put("romList", romList);
                goodsAllList.get(i).get(j).put("ramList", ramList);
                goodsAllList.get(i).get(j).put("colorList", colorList);
                goodsAllList.get(i).get(j).put("sizeList", sizeList);

                // System.out.println(MP.get(j).get("goodsPrice")+" "+MP.get(j).get("goodsImage"));

            }
        }

       for(int i=0;i<goodsAllList.size();i++){
            for(int j=0;j<goodsAllList.get(i).size();j++){

                System.out.println(goodsAllList.get(i).get(j).get("goodsId")+" "+
                        goodsAllList.get(i).get(j).get("romList")+" "+
                        goodsAllList.get(i).get(j).get("ramList")+" "+
                        goodsAllList.get(i).get(j).get("colorList")+" "+
                        goodsAllList.get(i).get(j).get("sizeList")+" "+
                        goodsAllList.get(i).get(j).get("goodsName"));

            }
           System.out.println("--------------------------------");
        }
      //  System.out.println("--------------------------------");
        return   goodsAllList;
    }

    public List<Map<String, Object>> findGoodsByTime() {
        List<Map<String, Object>> goodsList = goodsMapper.findGoodsByTime();

       /* for(int i=0;i<goodsList.size();i++){
            System.out.println(goodsList.get(i).get("goodsId")+" "+
                    goodsList.get(i).get("goodsName")+" "+
                    goodsList.get(i).get("goodsSaleTime"));
        }
        System.out.println("--------------------------------");*/

        for (int i = 0; i < goodsList.size(); i++) {
            List<Map<String, Object>> goodsAttr = goodsAttrMapper.findMPBygoodsId(Integer.parseInt(goodsList.get(i).get("goodsId").toString()));
            goodsList.get(i).put("goodsImage", "/rcestore/img/goodsAttr/" + goodsAttr.get(0).get("goodsImage"));
        }
/*
      for(int i=0;i<goodsList.size();i++){
           System.out.println(goodsList.get(i).get("goodsId")+" "+
                   goodsList.get(i).get("goodsName")+" "+
                   goodsList.get(i).get("goodsSaleTime")+" "+
                   goodsList.get(i).get("goodsImage"));
        }
        System.out.println("--------------------------------");*/

        return goodsList;
    }

    public List<List<Map<String, Object>>> findGoodsByPrice(int low, int high) {

        List<List<Map<String, Object>>> goodsList = new ArrayList<List<Map<String, Object>>>();
      /*  List<Map<String,Object>> goodsLowList=new ArrayList<Map<String, Object>>();
        List<Map<String,Object>> goodHighList=new ArrayList<Map<String, Object>>();*/


        List<Map<String, Object>> goodsAttrLowList = goodsAttrMapper.findGoodsByLowPrice(low);

        for (int i = 0; i < goodsAttrLowList.size(); i++) {
            Goods good = goodsMapper.findDescById(Integer.parseInt(goodsAttrLowList.get(i).get("goodsId").toString()));
            String img = "/rcestore/img/goodsAttr/" + goodsAttrLowList.get(i).get("goodsImage").toString();
            goodsAttrLowList.get(i).put("goodsRImage", img);
            goodsAttrLowList.get(i).put("goodsName", good.getGoodsName());
            goodsAttrLowList.get(i).put("goodsTotalDesc", good.getGoodsTotalDesc());
            goodsAttrLowList.get(i).put("goodsSaleDesc", good.getGoodsSaleDesc());

        }

      /*for(int i=0;i<goodsAttrLowList.size();i++){
          System.out.println(i+" "+goodsAttrLowList.get(i).get("goodsId")+" "+
                  goodsAttrLowList.get(i).get("goodsName")+" "+
                  goodsAttrLowList.get(i).get("goodsRImage")+" "+
                  goodsAttrLowList.get(i).get("goodsPrice")+" "+
                  goodsAttrLowList.get(i).get("goodsTotalDesc")+" "+
                  goodsAttrLowList.get(i).get("goodsSaleDesc"));
        }
        System.out.println("-----------------------------------------");
*/
        List<Map<String, Object>> goodsAttrHighList = goodsAttrMapper.findGoodsByHighPrice(high);

        for (int i = 0; i < goodsAttrHighList.size(); i++) {
            Goods good = goodsMapper.findDescById(Integer.parseInt(goodsAttrHighList.get(i).get("goodsId").toString()));
            String img = "/rcestore/img/goodsAttr/" + goodsAttrHighList.get(i).get("goodsImage").toString();
            goodsAttrHighList.get(i).put("goodsRImage", img);
            goodsAttrHighList.get(i).put("goodsName", good.getGoodsName());
            goodsAttrHighList.get(i).put("goodsTotalDesc", good.getGoodsTotalDesc());
            goodsAttrHighList.get(i).put("goodsSaleDesc", good.getGoodsSaleDesc());

        }
       /* for(int i=0;i<goodsAttrHighList.size();i++){
            System.out.println(i+" "+goodsAttrHighList.get(i).get("goodsId")+" "+
                    goodsAttrHighList.get(i).get("goodsName")+" "+
                    goodsAttrHighList.get(i).get("goodsRImage")+" "+
                    goodsAttrHighList.get(i).get("goodsPrice")+" "+
                    goodsAttrHighList.get(i).get("goodsTotalDesc")+" "+
                    goodsAttrHighList.get(i).get("goodsSaleDesc"));
        }*/
        goodsList.add(goodsAttrLowList);
        goodsList.add(goodsAttrHighList);

        return goodsList;
    }
/*
    public void getGoodsRec() throws IOException {
        List<Integer> userIdList = userMapper.getUserId();

        FileWriter ufw = new FileWriter("D:\\Code\\JavaEE\\rcestore\\src\\main\\webapp\\file\\用户.txt");
        for (int i = 0; i < userIdList.size(); i++) {
            int No = i + 1;
            ufw.write(userIdList.get(i) + "::" + No);
            ufw.write("\r\n");
        }
        ufw.close();

        FileWriter gfw = new FileWriter("D:\\Code\\JavaEE\\rcestore\\src\\main\\webapp\\file\\物品.txt");

        List<Integer> goodsIdList = goodsMapper.getGoodsId();

        for (int i = 0; i < goodsIdList.size(); i++) {
            int No = i + 1;
            gfw.write(goodsIdList.get(i) + "::" + No);
            gfw.write("\r\n");
        }
        gfw.close();

      *//*  for(int i=0;i<50;i++){
            Random num=new Random();
            int num1=num.nextInt(20)+1;
            int num2=num.nextInt(50)+1;
            int num3=num.nextInt(5)+1;

            GoodsEvaluate goodsEvaluate=new GoodsEvaluate();
            goodsEvaluate.setGoodId(num1);
            goodsEvaluate.setUserId(num2);
            goodsEvaluate.setGoodsScore(num3);

            goodsEvaluateMapper.addGoodsEvaluate(goodsEvaluate);
        }*//*


        FileWriter efw = new FileWriter("D:\\Code\\JavaEE\\rcestore\\src\\main\\webapp\\file\\评分.txt");

        List<GoodsEvaluate> goodsEvaluatesList = goodsEvaluateMapper.getGoodsEvaluate();

        for (int i = 0; i < goodsEvaluatesList.size(); i++) {
            efw.write(goodsEvaluatesList.get(i).getUserId() + "::" + goodsEvaluatesList.get(i).getGoodId() + "::" + goodsEvaluatesList.get(i).getGoodsScore());
            efw.write("\r\n");
        }
        efw.close();

        new GoodsCorrelation()._Run();

        FileReader data_about = new FileReader("D:\\Code\\JavaEE\\rcestore\\src\\main\\webapp\\file\\推荐.txt");
        BufferedReader read_data_about = new BufferedReader(data_about);
        String s2;        //暂存文件一行记录
        int userId = 1;
        while ((s2 = read_data_about.readLine()) != null) {

            String[] goodsId = s2.split("::");
            String str = "";
            GoodsRecommand goodsRecommand = new GoodsRecommand();

            for (int i = 0; i < goodsId.length; i++) {
                goodsRecommand.setUserId(userId);
                if (i > 1) {
                    str += goodsId[i]+"#";
                }
            }
            goodsRecommand.setGoodsIdStr(str);
            goodsRecMapper.addGoodsRec(goodsRecommand);
            userId++;

        }

    }*/

     public void addGoodsReturn(GoodsReturn goodsReturn){
         goodsReturn.setStatus(0);

         goodsReturnMapper.addGoodsReturn(goodsReturn);

     }

     public List<GoodsReturn> getGoodsReturn(){
        return goodsReturnMapper.getGoodsReturn();
     }

     public void updateReturnStatus(int id,int status){
        goodsReturnMapper.updateStatus(id,status);
     }

     public void addGoodsChange(GoodsChange goodsChange){
        goodsChange.setStatus(0);
        goodsChangeMapper.addGoodsChange(goodsChange);
     }

    public List<GoodsChange> getGoodsChange(){
        return  goodsChangeMapper.getGoodsChange();
    }
    public void updateChangeStatus(int id,int status){
        goodsChangeMapper.updateStatus(id,status);
    }

    public void addGoodsRepair(GoodsRepair goodsRepair){
        goodsRepair.setStatus(0);
        goodsRepairMapper.addGoodsRepair(goodsRepair);
    }

    public List<GoodsRepair> getGoodsRepair(){
        return  goodsRepairMapper.getGoodsRepair();
    }

    public void updateRepairStatus(int id,int status){
       goodsRepairMapper.updateStatus(id,status);
    }

    public void addGoodsStock(GoodsStock goodsStock){
        goodsStock.setStockTime(new Date());
          goodsStockMapper.addGoodsStock(goodsStock);
    }
    public List<GoodsStock>  showGoodsStock(){
        return goodsStockMapper.getGoodsStock();
    }

    public List<Map<String,Object>> showSettle(Date date1,Date date2){

     /*  List<Map<String,Object>>  settelList=goodsSettleMapper.settleByGoodsType(date1,date2);
       System.out.println(settelList);*/
        return goodsSettleMapper.settleByGoodsType(date1,date2);
    }

    public List<Map<String,Object>> showGoodsStockNum(){

        List<GoodsAttributes> goodsAttributesList=goodsAttrMapper.findAll();

        List<Map<String,Object>> goodsAttributesListNew= new ArrayList<Map<String, Object>>();
        for(int i=0;i<goodsAttributesList.size();i++){
            String goodsId=String.valueOf(goodsAttributesList.get(i).getGoodsId());
            String goodsName=goodsMapper.findById(Integer.parseInt(goodsId)).getGoodsName();
            Map<String,Object> map=new HashMap<String, Object>();
            map.put("goodsAttributes",goodsAttributesList.get(i));
            map.put("goodsName",goodsName);
            goodsAttributesListNew.add(map);
        }

        return  goodsAttributesListNew;
    }

    public List<Double> findGoodsPrice(String rom,String ram){
         return  goodsAttrMapper.findGoodsPrice(rom,ram);
    }


}
package com.rce.ssm.service;

import com.rce.ssm.model.Address;
import com.rce.ssm.model.goods.*;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author xinror
 * @discrition com.rce.ssm.service
 * @veisiong 1.0
 * @date 2018/6/13
 */
@Service
public interface GoodsService {

    public Goods findById(int goodId);

    // public List<GoodsAttributes> findByVersion(int goodId);
    // List<GoodsAttributes> findByGoodsId(int goodsId);
    public List<Map<String, String>> findColorCount(int goodsId);

    public List<Map<String, String>> findRoamCount(int goodsId);

    public List<Map<String, String>> findDescById(int goodId);

    public List<Goods> findAll();

    public List<Map<String, Object>> findGoodsInfo(int goodsId);

    public void addGoods(Goods good);

    public GoodsAttributes findGoodsAttrByAttrId(int goodsAttrId);

    public void updateGoodsAttr(GoodsAttributes ga);

    public void deleteGoods(int goodsId);

    public void deleteGoodsInfo(int goodsAttrId);

    public void addGoodsInfo(GoodsAttributes ga);

    public void updateGoods(Goods goods);

    public List<List<Map<String, Object>>> findGoodsByType();

    public List<Map<String, Object>> findGoodsByTime();

    public List<List<Map<String, Object>>> findGoodsByPrice(int low, int high);

    public void getGoodsRec() throws IOException;

    public void addGoodsAfterSale(GoodsAfterSale goodsAfterSale);

    public List<GoodsAfterSale> getGoodsAfterSale();

    public void updateAfterSaleStatus(int id, int status);

    public void addGoodsStock(GoodsStock goodsStock);

    public List<GoodsStock> showGoodsStock();

    public List<Map<String, Object>> showSettle(Date date1, Date date2);

    public List<GoodsAttributes> showGoodsStockNum();

    public List<List<Map<String, Object>>> selectGoodsByStep();

    public List<Double> findGoodsPrice(String rom, String ram);

    public List<Map<String, Object>> showGoodsStockNumWithType(List<GoodsAttributes> goodsAttributesList);

    public List<Map<String,Object>> findUserGoodsRec(int userId);

    public List<Map<String,Object>> findGoodsRecWithOutUser();

    public int findGoodsAttrIdByVerson(String rom, String ram, String color);

    public Address findUserInfo(int userId);

    public List<Map<String,Object>> findAfterSaleByUserId(int userId);

    public List<Map<String,Object>> searchGoodsByInfo(String goodsType, String goodsRom, String goodsRam, double lowgoodsPrice, double highgoodsPrice);

    public List<Map<String,Object>> findAllSearch();

    public List<GoodsEvaluateList> selectAllGoodsEvaluate(int goodsid);
}

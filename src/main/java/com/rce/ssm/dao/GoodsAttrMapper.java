package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsAttributes;
import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Map;

/**
 * @author xinror
 * @discrition com.rce.ssm.mapping
 * @veisiong 1.0
 * @date 2018/6/13
 */
@Repository
public interface GoodsAttrMapper {
    public List<GoodsAttributes> findAll();
    public GoodsAttributes findGoodsAttrByAttrId(int goodsAttrId);
    public void delete(int id);
    public void update(GoodsAttributes gt);
    public void insert(GoodsAttributes gt);
    public  List<GoodsAttributes> findByVersion(int goodId);
    public List<GoodsAttributes> findByGoodsId(int goodsId);
    public List<Map<String,String>> findColorCount(int goodsId);
    public List<Map<String,String>> findRoamCount(int goodsId);
    public List<Map<String,Object>> findGoodsInfo(int goodsId);
    public List<Map<String,Object>>  findMPBygoodsId(int goodsId);
    public List<Map<String,Object>>  findGoodsByLowPrice(int price);
    public List<Map<String,Object>> findGoodsByHighPrice(int price);
    public List<String> findDistRom(int goodsId);
    public List<String> findDistRam(int goodsId);
    public List<String> findDistColor(int goodsId);
    public List<String> findDistSize(int goodsId);
    public List<Double> findGoodsPrice(String goodsRom,String goodsRam);

}

package com.rce.ssm.dao;

import com.rce.ssm.model.goods.Goods;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao.Goods
 * @veisiong 1.0
 * @date 2018/6/13
 */
@Repository
public interface GoodsMapper {
    public void insert(Goods good);
    public List<Goods> findAll();
    public Goods findById(int id);
    public void update(Goods goods);
    public void delete(int id);
    public void findByName(String name);
    public Goods findDescById(int id);
    public int findMaxGoodId();
    public List<Map<String,Object>> findByType();
    public List<String> findType();
    public  List<Map<String,Object>>findGoodsByType(String goodsType);
    public  List<Map<String,Object>> findGoodsWithoutType();
    public List<Map<String,Object>>findGoodsByTime();
    public List<Integer> getGoodsId();
}


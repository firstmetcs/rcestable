package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsAfterSale;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/7/2
 */
@Repository
public interface GoodsAfterSaleMapper {
    public void addGoodsAfterSale(GoodsAfterSale goodsAfterSale);
    public List<GoodsAfterSale> getGoodsAfterSale();
    public void updateStatus(int id, int status);
    public List<GoodsAfterSale>getGoodsAfterSaleByUserId(int userId);
}

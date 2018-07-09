package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsStock;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/7/3
 */
@Repository
public interface GoodsStockMapper {

   public void addGoodsStock(GoodsStock goodsStock);
   public List<GoodsStock> getGoodsStock();

}

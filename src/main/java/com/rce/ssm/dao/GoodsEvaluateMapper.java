package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsEvaluate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/6/29
 */
@Repository
public interface GoodsEvaluateMapper {
   public void addGoodsEvaluate(GoodsEvaluate goodsEvaluate);
   public List<GoodsEvaluate> getGoodsEvaluate();
}

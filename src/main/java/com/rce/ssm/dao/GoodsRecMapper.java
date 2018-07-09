package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsRecommand;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/6/30
 */
@Repository
public interface GoodsRecMapper {
    public void addGoodsRec(GoodsRecommand goodsRecommand);
    public void saveList(List<GoodsRecommand> list);
}

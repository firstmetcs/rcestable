package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsChange;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/7/3
 */
@Repository
public interface GoodsChangeMapper {
    public void addGoodsChange(GoodsChange goodsChange);
    public List<GoodsChange> getGoodsChange();
    public void updateStatus(int id, int status);
}

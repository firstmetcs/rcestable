package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsRepair;
import com.rce.ssm.model.goods.GoodsReturn;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/7/3
 */
@Repository
public interface GoodsRepairMapper {
    public void addGoodsRepair(GoodsRepair goodsRepair);
    public List<GoodsRepair> getGoodsRepair();
    public void updateStatus(int id, int status);
}

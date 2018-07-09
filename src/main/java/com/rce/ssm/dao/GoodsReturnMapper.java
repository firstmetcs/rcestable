package com.rce.ssm.dao;

import com.rce.ssm.model.goods.GoodsReturn;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/7/2
 */
@Repository
public interface GoodsReturnMapper {
    public void addGoodsReturn(GoodsReturn goodsReturn);
    public List<GoodsReturn> getGoodsReturn();
    public void updateStatus(int id, int status);
}

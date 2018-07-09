package com.rce.ssm.dao;

import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author xinror
 * @discrition com.rce.ssm.dao
 * @veisiong 1.0
 * @date 2018/7/4
 */
@Repository
public interface GoodsSettleMapper {
    public List<Map<String,Object>> settleByGoodsType(Date date1, Date date2);
}

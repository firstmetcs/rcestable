package com.rce.ssm.dao;

import com.rce.ssm.model.OrderGoods;

public interface OrderGoodsDao {
    int deleteByPrimaryKey(Integer godorderid);

    int insert(OrderGoods record);

    int insertSelective(OrderGoods record);

    OrderGoods selectByPrimaryKey(Integer godorderid);

    int updateByPrimaryKeySelective(OrderGoods record);

    int updateByPrimaryKey(OrderGoods record);
}
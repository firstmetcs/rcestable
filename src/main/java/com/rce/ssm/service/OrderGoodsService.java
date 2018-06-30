package com.rce.ssm.service;

import com.rce.ssm.model.OrderGoods;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface OrderGoodsService {

    int deleteByPrimaryKey(Integer godorderid);

    int insert(OrderGoods record);

    int insertSelective(OrderGoods record);

    OrderGoods selectByPrimaryKey(Integer godorderid);

    int updateByPrimaryKeySelective(OrderGoods record);

    int updateByPrimaryKey(OrderGoods record);

}

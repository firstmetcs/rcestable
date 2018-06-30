package com.rce.ssm.service;

import com.rce.ssm.model.Order;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface OrderService {

    int deleteByPrimaryKey(Integer orderid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer orderid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

}

package com.rce.ssm.dao;

import com.rce.ssm.model.Order;

public interface OrderDao {
    int deleteByPrimaryKey(Integer orderid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer orderid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}
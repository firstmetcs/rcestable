package com.rce.ssm.dao;

import com.rce.ssm.model.Order;
import com.rce.ssm.model.OrderList;
import com.rce.ssm.model.goods.GoodsEvaluate;

import java.util.List;

public interface OrderDao {
    int deleteByPrimaryKey(Integer orderid);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer orderid);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    List<OrderList> queryForOrderList(Integer userid);

    List<OrderList> selectOrderById(Integer orderid);

    Integer insertGoodsEvaluate(List<GoodsEvaluate> goodsevaluatelist);

    Integer changeEvaluateFlag(Integer orderid);

    Integer changeorderstatusto2(Integer orderid);

    Integer changeorderstatusto3(Integer orderid);

}
package com.rce.ssm.service;

import com.rce.ssm.model.Order;
import com.rce.ssm.model.OrderList;
import com.rce.ssm.model.goods.GoodsEvaluate;

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

    List<OrderList> getOrderList(Integer userid);

    List<OrderList> SelectOrderById(Integer orderid);

    Integer ChangeEvaluateFlag(Integer orderid);

    Integer InsertGoodsEvaluateList(List<GoodsEvaluate> goodsevaluatelist);

    Integer changeOrderStatusTo2(Integer orderid);

    Integer changeOrderStatusTo3(Integer orderid);

}

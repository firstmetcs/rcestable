package com.rce.ssm.service.impl;

import com.rce.ssm.dao.OrderDao;
import com.rce.ssm.model.Order;
import com.rce.ssm.model.OrderList;
import com.rce.ssm.model.goods.GoodsEvaluate;
import com.rce.ssm.service.OrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class OrderServiceImpl implements OrderService {

    @Resource
    private OrderDao orderDao;

    public int deleteByPrimaryKey(Integer orderid) {
        return orderDao.deleteByPrimaryKey(orderid);
    }

    public int insert(Order record) {
        return orderDao.insert(record);
    }

    public int insertSelective(Order record) {
        return orderDao.insertSelective(record);
    }

    public Order selectByPrimaryKey(Integer orderid) {
        return orderDao.selectByPrimaryKey(orderid);
    }

    public int updateByPrimaryKeySelective(Order record) {
        return orderDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Order record) {
        return orderDao.updateByPrimaryKey(record);
    }

    public List<OrderList> getOrderList(Integer userid) {
        return orderDao.queryForOrderList(userid);
    }

    public List<OrderList> SelectOrderById(Integer orderid) {
        return orderDao.selectOrderById(orderid);
    }

    public Integer ChangeEvaluateFlag(Integer orderid) {
        return orderDao.changeEvaluateFlag(orderid);
    }

    public Integer InsertGoodsEvaluateList(List<GoodsEvaluate> goodsEvaluates) {
        return orderDao.insertGoodsEvaluate(goodsEvaluates);
    }

    public Integer changeOrderStatusTo2(Integer orderid) {
        return orderDao.changeorderstatusto2(orderid);
    }

    public Integer changeOrderStatusTo3(Integer orderid) {
        return orderDao.changeorderstatusto3(orderid);
    }
}

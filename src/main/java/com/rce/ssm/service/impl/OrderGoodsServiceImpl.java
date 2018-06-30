package com.rce.ssm.service.impl;

import com.rce.ssm.dao.OrderGoodsDao;
import com.rce.ssm.dao.UserDao;
import com.rce.ssm.model.OrderGoods;
import com.rce.ssm.model.User;
import com.rce.ssm.service.OrderGoodsService;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class OrderGoodsServiceImpl implements OrderGoodsService {

    @Resource
    private OrderGoodsDao orderGoodsDao;


    public int deleteByPrimaryKey(Integer godorderid) {
        return orderGoodsDao.deleteByPrimaryKey(godorderid);
    }

    public int insert(OrderGoods record) {
        return orderGoodsDao.insert(record);
    }

    public int insertSelective(OrderGoods record) {
        return orderGoodsDao.insertSelective(record);
    }

    public OrderGoods selectByPrimaryKey(Integer godorderid) {
        return orderGoodsDao.selectByPrimaryKey(godorderid);
    }

    public int updateByPrimaryKeySelective(OrderGoods record) {
        return orderGoodsDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(OrderGoods record) {
        return orderGoodsDao.updateByPrimaryKey(record);
    }
}

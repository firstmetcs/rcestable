package com.rce.ssm.service.impl;

import com.rce.ssm.dao.ShoppingCartDao;
import com.rce.ssm.dao.UserDao;
import com.rce.ssm.model.ShoppingCart;
import com.rce.ssm.model.User;
import com.rce.ssm.service.ShoppingCartService;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class ShoppingCartServiceImpl implements ShoppingCartService {

    @Resource
    private ShoppingCartDao shoppingCartDao;


    public int deleteByPrimaryKey(Integer shoppingcartid) {
        return shoppingCartDao.deleteByPrimaryKey(shoppingcartid);
    }

    public int insert(ShoppingCart record) {
        return shoppingCartDao.insert(record);
    }

    public int insertSelective(ShoppingCart record) {
        return shoppingCartDao.insertSelective(record);
    }

    public ShoppingCart selectByPrimaryKey(Integer shoppingcartid) {
        return shoppingCartDao.selectByPrimaryKey(shoppingcartid);
    }

    public List<ShoppingCart> selectByUserId(Integer userid) {
        return shoppingCartDao.selectByUserId(userid);
    }

    public int updateByPrimaryKeySelective(ShoppingCart record) {
        return shoppingCartDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(ShoppingCart record) {
        return shoppingCartDao.updateByPrimaryKey(record);
    }

    public BigDecimal getTotalPrice(Integer userid){
        return shoppingCartDao.getTotalPrice(userid);
    }

    public int deleteByUserId(Integer userid){
        return shoppingCartDao.deleteByUserId(userid);
    }
}

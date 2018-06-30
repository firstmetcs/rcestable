package com.rce.ssm.dao;

import com.rce.ssm.model.ShoppingCart;

import java.math.BigDecimal;
import java.util.List;

public interface ShoppingCartDao {
    int deleteByPrimaryKey(Integer shoppingcartid);

    int insert(ShoppingCart record);

    int insertSelective(ShoppingCart record);

    ShoppingCart selectByPrimaryKey(Integer shoppingcartid);

    List<ShoppingCart> selectByUserId(Integer userid);

    int updateByPrimaryKeySelective(ShoppingCart record);

    int updateByPrimaryKey(ShoppingCart record);

    BigDecimal getTotalPrice(Integer userid);

    int deleteByUserId(Integer userid);
}
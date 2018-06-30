package com.rce.ssm.service;

import com.rce.ssm.model.ShoppingCart;
import com.rce.ssm.model.User;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface ShoppingCartService {

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

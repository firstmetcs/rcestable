package com.rce.ssm.service;

import com.rce.ssm.model.Address;

import java.util.List;

public interface AddressService {
    int deleteByPrimaryKey(Integer addressid);

    int insert(Address record);

    int insertSelective(Address record);

    Address selectByPrimaryKey(Integer addressid);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);

    List<Address> selectByUserId(Integer userid);
}

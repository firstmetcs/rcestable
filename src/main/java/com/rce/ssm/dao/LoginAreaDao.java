package com.rce.ssm.dao;

import com.rce.ssm.model.LoginArea;
import com.rce.ssm.utils.AddressFromAli;

import java.util.List;

public interface LoginAreaDao {
    int deleteByPrimaryKey(Integer loginareaid);

    int insert(LoginArea record);

    int insertSelective(LoginArea record);

    LoginArea selectByPrimaryKey(Integer loginareaid);

    int updateByPrimaryKeySelective(LoginArea record);

    int updateByPrimaryKey(LoginArea record);

    List<LoginArea> selectByAddress(AddressFromAli addressFromAli);
}
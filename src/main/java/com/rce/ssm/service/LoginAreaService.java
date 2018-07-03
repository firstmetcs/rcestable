package com.rce.ssm.service;

import com.rce.ssm.model.LoginArea;
import com.rce.ssm.utils.AddressFromAli;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface LoginAreaService {

    int deleteByPrimaryKey(Integer loginareaid);

    int insert(LoginArea record);

    int insertSelective(LoginArea record);

    LoginArea selectByPrimaryKey(Integer loginareaid);

    int updateByPrimaryKeySelective(LoginArea record);

    int updateByPrimaryKey(LoginArea record);

    List<LoginArea> selectByAddress(AddressFromAli addressFromAli);

}

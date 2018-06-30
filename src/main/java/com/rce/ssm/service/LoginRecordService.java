package com.rce.ssm.service;

import com.rce.ssm.model.LoginRecord;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface LoginRecordService {

    int deleteByPrimaryKey(Integer loginid);

    int insert(LoginRecord record);

    int insertSelective(LoginRecord record);

    LoginRecord selectByPrimaryKey(Integer loginid);

    int updateByPrimaryKeySelective(LoginRecord record);

    int updateByPrimaryKey(LoginRecord record);

}

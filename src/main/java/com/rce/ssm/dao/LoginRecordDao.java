package com.rce.ssm.dao;

import com.rce.ssm.model.LoginRecord;

public interface LoginRecordDao {
    int deleteByPrimaryKey(Integer loginid);

    int insert(LoginRecord record);

    int insertSelective(LoginRecord record);

    LoginRecord selectByPrimaryKey(Integer loginid);

    int updateByPrimaryKeySelective(LoginRecord record);

    int updateByPrimaryKey(LoginRecord record);
}
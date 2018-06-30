package com.rce.ssm.service.impl;

import com.rce.ssm.dao.LoginRecordDao;
import com.rce.ssm.model.LoginRecord;
import com.rce.ssm.service.LoginRecordService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class LoginRecordServiceImpl implements LoginRecordService {

    @Resource
    private LoginRecordDao loginRecordDao;

    public int deleteByPrimaryKey(Integer loginid){
        return loginRecordDao.deleteByPrimaryKey(loginid);
    }

    public int insert(LoginRecord record){
        return loginRecordDao.insert(record);
    }

    public int insertSelective(LoginRecord record){
        return loginRecordDao.insertSelective(record);
    }

    public LoginRecord selectByPrimaryKey(Integer loginid){
        return loginRecordDao.selectByPrimaryKey(loginid);
    }

    public int updateByPrimaryKeySelective(LoginRecord record){
        return loginRecordDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(LoginRecord record){
        return loginRecordDao.updateByPrimaryKey(record);
    }
}

package com.rce.ssm.service.impl;

import com.rce.ssm.dao.AddressDao;
import com.rce.ssm.dao.UserDao;
import com.rce.ssm.model.Address;
import com.rce.ssm.model.User;
import com.rce.ssm.service.AddressService;
import com.rce.ssm.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Firstmetcs on 2018/6/8.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class AddressServiceImpl implements AddressService {
    
    @Resource
    private AddressDao addressDao;


    public int deleteByPrimaryKey(Integer addressid) {
        return addressDao.deleteByPrimaryKey(addressid);
    }

    public int insert(Address record) {
        return addressDao.insert(record);
    }

    public int insertSelective(Address record) {
        return addressDao.insertSelective(record);
    }

    public Address selectByPrimaryKey(Integer addressid) {
        return addressDao.selectByPrimaryKey(addressid);
    }

    public int updateByPrimaryKeySelective(Address record) {
        return addressDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(Address record) {
        return addressDao.updateByPrimaryKey(record);
    }

    public  List<Address> selectByUserId(Integer userid){
        return addressDao.selectByUserId(userid);
    }
}

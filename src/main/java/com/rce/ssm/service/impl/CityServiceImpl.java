package com.rce.ssm.service.impl;

import com.rce.ssm.dao.CityDao;
import com.rce.ssm.model.City;
import com.rce.ssm.service.CityService;
import com.rce.ssm.service.UserService;
import com.rce.ssm.utils.AddressFromAli;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Firstmetcs on 2018/6/8.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class CityServiceImpl implements CityService {
    
    @Resource
    private CityDao cityDao;

    public int deleteByPrimaryKey(Integer id){
        return cityDao.deleteByPrimaryKey(id);
    }

    public int insert(City record){
        return cityDao.insert(record);
    }

    public int insertSelective(City record){
        return cityDao.insertSelective(record);
    }

    public City selectByPrimaryKey(Integer id){
        return cityDao.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(City record){
        return cityDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(City record){
        return cityDao.updateByPrimaryKey(record);
    }

    public List<City> selectByPid(Integer pid){
        return cityDao.selectByPid(pid);
    }

    public List<City> selectProvince(){
        return cityDao.selectProvince();
    }

    public City selectByIp(AddressFromAli addressFromAli) {
        return cityDao.selectByIp(addressFromAli);
    }
}

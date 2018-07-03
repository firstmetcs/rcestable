package com.rce.ssm.dao;

import com.rce.ssm.model.City;
import com.rce.ssm.utils.AddressFromAli;

import java.util.List;

public interface CityDao {
    int deleteByPrimaryKey(Integer id);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);

    List<City> selectByPid(Integer pid);

    List<City> selectProvince();

    City selectByIp(AddressFromAli addressFromAli);

}
package com.rce.ssm.service.impl;

import com.alibaba.fastjson.JSON;
import com.rce.ssm.dao.LoginAreaDao;
import com.rce.ssm.dao.UserDao;
import com.rce.ssm.model.LoginArea;
import com.rce.ssm.model.User;
import com.rce.ssm.service.LoginAreaService;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import com.rce.ssm.utils.AddressFromAli;
import com.rce.ssm.utils.AddressUtilData;
import com.rce.ssm.utils.AddressUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class LoginAreaServiceImpl implements LoginAreaService {

    @Resource
    private LoginAreaDao loginAreaDao;

    public int deleteByPrimaryKey(Integer loginareaid) {
        return loginAreaDao.deleteByPrimaryKey(loginareaid);
    }

    public int insert(LoginArea record) {
        return loginAreaDao.insert(record);
    }

    public int insertSelective(LoginArea record) {
        return loginAreaDao.insertSelective(record);
    }

    public LoginArea selectByPrimaryKey(Integer loginareaid) {
        return loginAreaDao.selectByPrimaryKey(loginareaid);
    }

    public int updateByPrimaryKeySelective(LoginArea record) {
        return loginAreaDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(LoginArea record) {
        return loginAreaDao.updateByPrimaryKeySelective(record);
    }

    public List<LoginArea> selectByAddress(AddressFromAli addressFromAli) {
        return loginAreaDao.selectByAddress(addressFromAli);
    }
}

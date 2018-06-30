package com.rce.ssm.service;

import com.rce.ssm.model.User;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface UserService {

    List<User> getAllUser();

    List<User> selectUserByEmail(String email);

    int insert(User record);

    int insertSelective(User record);

    public void active(String code);

    List<User> find(User user);

    public String existByEmail(String email);

    public String login(User user, HttpServletRequest request);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    public User getuser(String loginname);

    User findbycode(User user);

    User findbyuserid(int id);

}

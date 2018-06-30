package com.rce.ssm.service.impl;

import com.rce.ssm.dao.UserDao;
import com.rce.ssm.model.User;
import com.rce.ssm.service.UserService;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    public List<User> selectUserByEmail(String email) {
        return userDao.selectUserByEmail(email);
    }

    public List<User> getAllUser() {
        return userDao.selectAllUser();
    }

    public int insert(User record){return userDao.insert(record);}

    public int insertSelective(User record){return userDao.insertSelective(record);}

    public void active(String code) {
        userDao.active(code);
    }

    public List<User> find(User user) {
        return userDao.find(user);
    }

    public String existByEmail(String email) {
        String flag = "1";
        User user = new User();
        user.setUseremail(email);
        List<User> list = userDao.find(user);
        if (list.size() > 0) {
            flag = "0";
        }
        return flag;
    }

    public String login(User user, HttpServletRequest request) {
        String flag = "99";
        List<User> list = userDao.find(user);
        if (list.size() > 0) {
            String pwd = user.getLoginpwd();
            pwd = Tool.MD5(pwd);
            if (list.get(0).getLoginpwd().equals(pwd)) {
                flag = list.get(0).getUserstatus().toString();
                if ("1".equals(flag)) {
                    User usersession = list.get(0);
                    usersession.setLasttime(Tool.getDate());
                    usersession.setLastip(Tool.getIp(request));
                    usersession.setCookieid(Tool.getUUID());
                    userDao.updateByPrimaryKeySelective(usersession);
                    request.getSession().setAttribute(PublicStatic.USER, usersession);
                }
            } else {
                flag = "88";
            }
        }
        return flag;
    }

    public int updateByPrimaryKeySelective(User record){
        return userDao.updateByPrimaryKeySelective(record);
    }

    public int updateByPrimaryKey(User record){
        return userDao.updateByPrimaryKey(record);
    }

    public User getuser(String loginname) {
        String flag = "1";
        User user = new User();
        user.setLoginname(loginname);
        List<User> list = userDao.find(user);
        if (list.size() > 0) {
            user = (User) list.get(0);
        }
        return user;
    }

    public User findbycode(User user){
        return userDao.findbycode(user);
    }

    public User findbyuserid(int id) {
        User user = new User();
        user.setUserid(id);
        List<User> list = userDao.find(user);
        if (list.size() > 0) {
            user = list.get(0);
        }
        return user;
    }
}

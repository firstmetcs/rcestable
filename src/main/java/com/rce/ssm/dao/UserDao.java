package com.rce.ssm.dao;

import com.rce.ssm.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Firstmetcs on 2018/6/8.
 */

@Repository
public interface UserDao {

    List<User> selectUserByEmail(@Param("email") String email);

    List<User> selectAllUser();

    int insert(User record);

    int insertSelective(User record);

    void active(@Param("code")String code);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    List<User> find(User user);

    User findbycode(User user);

    List<Integer> findUserId();
}

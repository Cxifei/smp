package com.rimi.smp.mapper;

import com.rimi.smp.pojo.User;
import org.apache.ibatis.annotations.Param;

/**
 * @author 惜-梦
 * @description 用户映射接口
 * @date 2018-12-12 10:19
 */
public interface UserMapper {

    /**
     * 根据邮箱查询对象
     * @param email
     * @return
     */
    User findUserByEmail(@Param("email") String email);


    /**
     * 根据用户名去查询数据
     * @param username
     * @return
     */
    User findUserByUserName(String username);

    /**
     * 添加user对象到数据库
     * @param user
     * @return
     */
    boolean insertUser(User user);

}

package com.rimi.smp.service;

import com.rimi.smp.pojo.User;
import org.apache.ibatis.annotations.Param;

/**
 * @author 惜-梦
 * @description
 * @date 2018-12-12 22:52
 */
public interface IUserService {

    /**
     * 根据邮箱号  查询用户
     * @param email  查询的邮箱账号
     * @return 用户对象
     */
    User getUserByEmail(@Param("email") String email);

}

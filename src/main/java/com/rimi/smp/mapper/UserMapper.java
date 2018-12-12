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



}

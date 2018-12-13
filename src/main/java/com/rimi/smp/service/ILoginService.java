package com.rimi.smp.service;

import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 惜-梦
 * @description 登录
 * @date 2018-12-12 10:25
 */
public interface ILoginService {

    /**
     * 用户登录
     * @param email 登录的邮箱
     * @param password 登陆的密码
     * @param request  请求参数
     * @return true 登陆成功/false  登录失败
     */
    boolean login(String email , String password ,  String code , HttpServletRequest request);

}

package com.rimi.smp.service;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 惜-梦
 * @description 注册
 * @date 2018-12-14 16:38
 */
public interface IRegisterService {

    /**
     * 注册
     * @param email 邮箱
     * @param username 昵称
     * @param password 密码
     *
     * @param request
     * @return
     */
    boolean register(String email , String username , String password , HttpServletRequest request);

}

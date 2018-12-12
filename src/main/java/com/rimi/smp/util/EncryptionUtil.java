package com.rimi.smp.util;

import org.springframework.util.DigestUtils;

/**
 * @author 惜-梦
 * @description 加密工具类
 * @date 2018-12-12 09:56
 */
public class EncryptionUtil {

    /**
     *
     * 使用MD5对密码进行加密操作
     *   用户名  昵称
     * @param password  用户密码
     * @return 加密后的密码
     */
    public  static String md5Util( String password){

        String digest = DigestUtils.md5DigestAsHex(( "com.rimi.smp" + password).getBytes());
        return digest;

    }

}

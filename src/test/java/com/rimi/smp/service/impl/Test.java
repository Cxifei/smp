package com.rimi.smp.service.impl;

import com.rimi.smp.util.EncryptionUtil;

/**
 * @author 惜-梦
 * @description
 * @date 2018-12-13 12:35
 */
public class Test {

    public static void main(String[] args) {
        String s = EncryptionUtil.md5Util("12345678");
        System.out.println(s);
    }
}

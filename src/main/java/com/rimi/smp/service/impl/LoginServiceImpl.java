package com.rimi.smp.service.impl;

import com.rimi.smp.mapper.UserMapper;
import com.rimi.smp.pojo.User;
import com.rimi.smp.service.ILoginService;
import com.rimi.smp.util.Constant;
import com.rimi.smp.util.EncryptionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author 惜-梦
 * @description 登录接口的实现类
 * @date 2018-12-12 10:30
 */

@Service
public class LoginServiceImpl implements ILoginService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public boolean login(String email, String password, String code ,  HttpServletRequest request) {

        //获取session
        HttpSession session = request.getSession();

        String vcode = (String) session.getAttribute("code");
        if(!vcode.equals(code)){
            return false;
        }
        //获取对象
        User user = userMapper.findUserByEmail(email);
        //判断对象是否存在
        if(user == null){
            return false;
        }

        //判断密码是否正确
        String newPassword = EncryptionUtil.md5Util(password);
        boolean b = newPassword.equals(user.getPassword());

        //密码符合时  将用户信息存储在session中
            session.setAttribute(Constant.SEESSION_USER_INFO,user);
            return b;

    }
}

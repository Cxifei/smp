package com.rimi.smp.service.impl;

import com.rimi.smp.mapper.UserMapper;
import com.rimi.smp.pojo.User;
import com.rimi.smp.service.IRegisterService;
import com.rimi.smp.util.Constant;
import com.rimi.smp.util.EncryptionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 惜-梦
 * @description
 * @date 2018-12-14 16:42
 */
@Service
public class RegisterServiceImpl implements IRegisterService {

    @Autowired
    private UserMapper userMapper;


    @Override
    public boolean register(String email, String username, String password,  HttpServletRequest request) {
        //根据email 查询数据库
        User user1 = userMapper.findUserByEmail(email);
        if (user1 != null){
            //说明已经被注册过
            return false;
        }/*else if (user.getUsername() == username){
            //说明用户名已经存在
            return false;
        }*/

        User user = new User();

        user.setEmail(email);

        User user2 = userMapper.findUserByUserName(username);
        if (user2 != null){
            //说明
            return false;
        }


        user.setUsername(username);
        //对密码进行加密
         password = EncryptionUtil.md5Util(password);
         user.setPassword(password);

//         将用户保存到数据库中
        boolean b = userMapper.insertUser(user);
        request.getSession().setAttribute(Constant.SEESSION_USER_INFO,user);

        return b;
    }
}

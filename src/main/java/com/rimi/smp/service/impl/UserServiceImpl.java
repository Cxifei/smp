package com.rimi.smp.service.impl;

import com.rimi.smp.mapper.UserMapper;
import com.rimi.smp.pojo.User;
import com.rimi.smp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 惜-梦
 * @description
 * @date 2018-12-12 22:56
 */

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUserByEmail(String email) {
        User user = userMapper.findUserByEmail(email);
        if (user != null){
            return user;
        }
       return null;
    }

    @Override
    public User findUserByUserName(String username) {
        User user = userMapper.findUserByUserName(username);
        if (user != null){
            return user;
        }
        return null;
    }

    @Override
    public boolean insertUser(User user) {

        return  userMapper.insertUser(user);

    }
}

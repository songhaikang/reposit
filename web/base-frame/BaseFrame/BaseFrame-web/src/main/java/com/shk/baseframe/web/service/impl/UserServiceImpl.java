package com.shk.baseframe.web.service.impl;

import com.shk.baseframe.api.uc.domain.User;
import com.shk.baseframe.web.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: Ivan Vigoss
 * Date: 14-2-20
 * Time: AM11:48
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;//程序运行起来之后就没问题了

    @Override
    public User getUser(String userId) {
        return null;
//        return userMapper.getUser(userId);
    }

    @Override
    public void update(User user) {
//        userMapper.update(user);
    }

    @Override
    public List<User> getAllUsers() {

        return  null ;

//        return userMapper.getUserList();
    }

    @Override
    public void add(User user) {
//        userMapper.add(user);
    }
}

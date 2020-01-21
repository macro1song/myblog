package com.swjd.chukou.service.impl;


import com.swjd.chukou.mapper.UserMapper;
import com.swjd.chukou.model.User;
import com.swjd.chukou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }

    @Override
    public User queryUser(User user) {
        return userMapper.queryUser(user);
    }
}

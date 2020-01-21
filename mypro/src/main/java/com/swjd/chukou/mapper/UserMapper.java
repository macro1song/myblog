package com.swjd.chukou.mapper;

import com.swjd.chukou.model.User;

import java.util.List;

public interface UserMapper {
    User queryUser(User user) ;
    List<User> queryAllUser();
}

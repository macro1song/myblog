package com.swjd.chukou.service;


import com.swjd.chukou.model.User;

import java.util.List;

public interface UserService {
    List<User> queryAllUser();
    User queryUser(User user);
}

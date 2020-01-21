package com.swjd.chukou.controller;

import com.swjd.chukou.model.User;
import com.swjd.chukou.service.UserService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@MapperScan(basePackages = "com.swjd.chukou.mapper")
public class UserController {
    @Autowired
    private UserService userService ;
    //处理登录
    @RequestMapping("/queryUser")
    public String queryUser(Map map, Model model, HttpServletRequest request) {
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        System.out.println();
        //User user=new User("admin","123");
        User user=new User(name,pwd);
        System.out.println(user);
        User user2= userService.queryUser(user);
        System.out.println(user2);
        return  "mian";
    }
}

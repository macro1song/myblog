package com.swjd.chukou.model;

import lombok.Data;

@Data
public class User {
   private int user_id;
   private String user_name;
   private String user_pwd;
   private int user_role; //1管理员、2普通用户

    public User( ) {
    }
    public User(int user_id, String user_name, String user_pwd, int user_role) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_pwd = user_pwd;
        this.user_role = user_role;
    }
    public User( String user_name, String user_pwd ) {
        this.user_name = user_name;
        this.user_pwd = user_pwd;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", user_pwd='" + user_pwd + '\'' +
                ", user_role=" + user_role +
                '}';
    }
}

package com.spring.springboot.user;

import lombok.Data;

@Data
public class User
{
    private String uuid;
    private int uid;
    private String username;
    private String password;
    private String mail;
    private String createTime;
    private String avatar;
}

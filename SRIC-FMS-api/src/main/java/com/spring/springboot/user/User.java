package com.spring.springboot.user;

import lombok.Data;

/**
 * user 实体类
 * 用于获取和操作 user 数据
 */

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
    private String mark;
}

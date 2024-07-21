package com.spring.springboot.user;

import lombok.Data;

@Data
public class UserMessageResponse
{
    private int uid;
    private String username;
    private String avatar;
    private String mark;
    private int signCode; //登录200 未登录400 token过期500
}

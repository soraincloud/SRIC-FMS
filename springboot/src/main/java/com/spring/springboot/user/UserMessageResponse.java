package com.spring.springboot.user;

import lombok.Data;

/**
 * user message response 实体类
 * 用于返回用户基本信息和当前登录状态
 */

@Data
public class UserMessageResponse
{
    private int uid;
    private String username;
    private String avatar;
    private String mark;
    private int signCode; //登录200 未登录400 token过期500
}

package com.spring.springboot.user;

import lombok.Data;

/**
 * sign in 登录 response 实体类
 * 用于返回登录是否成功以及部分用户信息
 * 回传登录状态码的同时回传 token
 */

@Data
public class SignInResponsePojo
{
    private int code;
    private String token;
    private String uuid;
    private int uid;
    private int status;
}

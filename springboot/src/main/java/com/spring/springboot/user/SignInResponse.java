package com.spring.springboot.user;

import lombok.Data;

/**
 * 回传登录状态码的同时回传token
 */
@Data
public class SignInResponse
{
    private int code;
    private String token;
    private String uuid;
    private int uid;
}

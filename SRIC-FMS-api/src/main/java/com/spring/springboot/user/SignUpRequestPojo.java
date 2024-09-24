package com.spring.springboot.user;

import lombok.Data;

/**
 * sign up 注册 request 实体类
 * 用于 sign up 注册接参
 */

@Data
public class SignUpRequestPojo
{
    private String username;
    private String password;
    private String mail;
    private String code;
}

package com.spring.springboot.user;

import lombok.Data;

@Data
public class SignInCode
{
    private int code;
    private String id;
    private int uid;
    private String username;
    private String avatar;
}

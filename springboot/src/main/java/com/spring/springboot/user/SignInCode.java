package com.spring.springboot.user;

import lombok.Data;

@Data
public class SignInCode
{
    private int code;
    private String uuid;
    private int uid;
}

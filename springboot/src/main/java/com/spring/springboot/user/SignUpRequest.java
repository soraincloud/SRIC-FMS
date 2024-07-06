package com.spring.springboot.user;

import lombok.Data;

@Data
public class SignUpRequest
{
    private String username;
    private String password;
    private String mail;
    private String code;
}

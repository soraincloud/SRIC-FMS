package com.spring.springboot.interceptor;

import lombok.Data;
/**
 * log 实体类
 * 用于储存和显示 log
 */
@Data
public class LogPojo
{
    private String currentTime;
    private String clientIp;
    private String requestUrl;
    private String state;
    private int stateCode;
}

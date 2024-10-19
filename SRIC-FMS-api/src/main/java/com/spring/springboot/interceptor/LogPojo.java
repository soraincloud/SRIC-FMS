package com.spring.springboot.interceptor;

import lombok.Data;
/**
 * log 实体类
 * 用于储存和显示 log
 */
@Data
public class LogPojo
{
    private String currentTime; //时间
    private String clientIp; //IP地址
    private String requestUrl; //请求url
    private String urlModule; //url前缀权限模块
    private String state; //登录状态
    private int stateCode; //登录状态码
    private String loginId; //登录id
    private int permissionLevel; //权限等级
}

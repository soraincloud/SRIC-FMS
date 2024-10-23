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
    private String tokenData; //token内容
    private String state; //登录状态
    private String loginId; //登录id
    private int userPermissionLevel; //用户权限等级
    private int interfacePermissionLevel; //接口权限等级
    private boolean permissionPassed; //是否拥有权限
}

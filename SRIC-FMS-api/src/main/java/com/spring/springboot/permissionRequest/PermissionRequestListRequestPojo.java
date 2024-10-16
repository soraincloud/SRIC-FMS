package com.spring.springboot.permissionRequest;

import lombok.Data;

/**
 * permission request list request 实体类
 * 获取 permission request 列表的请求参数
 */

@Data
public class PermissionRequestListRequestPojo
{
    private int page;
    private int limitBefore;
    private int limitSize;
}

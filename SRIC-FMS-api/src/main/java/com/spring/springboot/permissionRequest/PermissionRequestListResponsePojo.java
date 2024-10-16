package com.spring.springboot.permissionRequest;

import lombok.Data;

import java.util.List;

/**
 * permission request list response 实体类
 * 获取 permission request 列表的返回数据实体
 */

@Data
public class PermissionRequestListResponsePojo
{
    List<PermissionRequest> permissionRequestList;
    int total;
}

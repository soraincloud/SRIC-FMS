package com.spring.springboot.permissionRequest;

import lombok.Data;

/**
 * - - - - - - - - - -
 * permissionRequest 实体类
 * 用于 permission 的 request 前缀数据传输
 * 便于修改和查看各接口的权限
 * - - - - - - - - - -
 */

@Data
public class PermissionRequest
{
    private String uuid;
    private String requestMapping;
    private int level;
    private String description;
}

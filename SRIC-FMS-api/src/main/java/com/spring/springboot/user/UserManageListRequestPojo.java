package com.spring.springboot.user;

import lombok.Data;

/**
 * user manage list request 实体类
 * 获取 user 列表的请求参数
 */

@Data
public class UserManageListRequestPojo
{
    private int page;
    private int limitBefore;
    private int limitSize;
}

package com.spring.springboot.user;

import lombok.Data;

import java.util.List;

/**
 * user manage list response 实体类
 * 获取 user 列表的返回数据实体
 */

@Data
public class UserManageListResponsePojo
{
    private List<User> userList;
    private int total;
}

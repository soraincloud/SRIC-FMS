package com.spring.springboot.PermissionMainMenu;

import lombok.Data;

import java.util.List;

/**
 * permission main menu list response 实体类
 * 获取 permission main menu 列表的返回数据实体
 */

@Data
public class PermissionMainMenuListResponsePojo
{
    private List<PermissionMainMenu> permissionMainMenuList;
    private int total;
}

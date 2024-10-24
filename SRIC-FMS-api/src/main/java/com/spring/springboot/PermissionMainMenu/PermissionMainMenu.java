package com.spring.springboot.PermissionMainMenu;

import lombok.Data;

/**
 * - - - - - - - - - -
 * permission main menu 实体类
 * 用于 main menu 的数据传输
 * 便于修改和查看各菜单及其权限
 * - - - - - - - - - -
 */

@Data
public class PermissionMainMenu
{
    private String uuid;
    private String name;
    private int level;
    private String description;
}

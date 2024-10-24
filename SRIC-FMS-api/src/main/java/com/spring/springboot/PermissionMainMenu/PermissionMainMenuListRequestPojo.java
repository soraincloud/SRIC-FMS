package com.spring.springboot.PermissionMainMenu;

import lombok.Data;

/**
 * permission main menu list request 实体类
 * 获取 permission main menu 列表的请求参数
 */

@Data
public class PermissionMainMenuListRequestPojo
{
    private int page;
    private int limitBefore;
    private int limitSize;
}

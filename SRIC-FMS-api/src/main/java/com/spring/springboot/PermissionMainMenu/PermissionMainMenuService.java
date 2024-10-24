package com.spring.springboot.PermissionMainMenu;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface PermissionMainMenuService
{
    List<PermissionMainMenu> getPermissionMainMenuList(PermissionMainMenuListRequestPojo permissionMainMenuListRequest);
    int getPermissionMainMenuCount();
    ResponseCode addOrUpdatePermissionMainMenu(PermissionMainMenu permissionMainMenu);

}

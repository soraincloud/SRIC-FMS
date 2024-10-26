package com.spring.springboot.PermissionMainMenu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * - - - - - - - - - -
 * permission main menu 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/permissionMainMenu")
public class PermissionMainMenuController
{
    @Autowired
    PermissionMainMenuService permissionMainMenuService;

    /**
     * @author SRIC
     *
     * 获取 permission main menu 数据列表 仅获取名称和权限等级 用于显示
     */
    @GetMapping("/getPermissionMainMenu")
    public List<PermissionMainMenu> getPermissionMainMenu()
    {
        return permissionMainMenuService.getPermissionMainMenu();
    }
}

package com.spring.springboot.PermissionMainMenu;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * - - - - - - - - - -
 * permission main menu manage 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/permissionMainMenuManage")
public class PermissionMainMenuManageController
{
    @Autowired
    PermissionMainMenuService permissionMainMenuService;

    /**
     * @author SRIC
     *
     * 获取 permission main menu 数据列表 分页
     */
    @GetMapping("/getPermissionMainMenuList")
    public PermissionMainMenuListResponsePojo getPermissionMainMenuList(PermissionMainMenuListRequestPojo permissionMainMenuListRequest)
    {
        PermissionMainMenuListResponsePojo permissionMainMenuListResponse = new PermissionMainMenuListResponsePojo();
        permissionMainMenuListResponse.setPermissionMainMenuList(permissionMainMenuService.getPermissionMainMenuList(permissionMainMenuListRequest));
        permissionMainMenuListResponse.setTotal(permissionMainMenuService.getPermissionMainMenuCount());
        return permissionMainMenuListResponse;
    }

    /**
     * @author SRIC
     *
     * 添加或修改一条 permission request 数据
     */
    @PostMapping("/addOrUpdatePermissionMainMenu")
    public ResponseCode addOrUpdatePermissionMainMenu(@RequestBody PermissionMainMenu permissionMainMenu)
    {
        return permissionMainMenuService.addOrUpdatePermissionMainMenu(permissionMainMenu);
    }
}

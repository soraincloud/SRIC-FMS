package com.spring.springboot.PermissionMainMenu;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * - - - - - - - - - -
 * permission main menu 服务类
 * - - - - - - - - - -
 */

@Service
public class PermissionMainMenuServiceImpl implements PermissionMainMenuService
{
    @Autowired
    PermissionMainMenuMapper permissionMainMenuMapper;

    /**
     * @author SRIC
     *
     * 获取 permission main menu 数据列表 分页
     */
    public List<PermissionMainMenu> getPermissionMainMenuList(PermissionMainMenuListRequestPojo permissionMainMenuListRequest)
    {
        permissionMainMenuListRequest.setLimitSize(20); //一页获取20条数据
        permissionMainMenuListRequest.setLimitBefore((permissionMainMenuListRequest.getPage() - 1) * 20); //当前获取数据之前的空缺 （如第一页空缺0条 第二页空缺20条）
        return permissionMainMenuMapper.getPermissionMainMenuList(permissionMainMenuListRequest);
    }

    /**
     * @author SRIC
     *
     * 获取 permission main menu 数据列表数量
     */
    public int getPermissionMainMenuCount()
    {
        return permissionMainMenuMapper.getPermissionMainMenuCount();
    }

    /**
     * @author SRIC
     *
     * 添加或修改一条 permission main menu
     * 若修改数据条数不为 0 则修改成功
     * 若传入 uuid 则为修改
     * 传入 uuid 为空则为添加
     */
    public ResponseCode addOrUpdatePermissionMainMenu(PermissionMainMenu permissionMainMenu)
    {
        ResponseCode responseCode = new ResponseCode();
        if(permissionMainMenuMapper.getPermissionMainMenuCountByName(permissionMainMenu) > 1) //若已有重复的名称
        {
            responseCode.setCode(400);
        }
        else
        {
            if(permissionMainMenu.getUuid().isEmpty())
            {
                permissionMainMenuMapper.insertPermissionMainMenu(permissionMainMenu);
            }
            else
            {
                permissionMainMenuMapper.updatePermissionMainMenu(permissionMainMenu);
            }
            responseCode.setCode(200);
        }
        return responseCode;
    }
}

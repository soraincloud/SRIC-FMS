package com.spring.springboot.PermissionMainMenu;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 permission_main_menu 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface PermissionMainMenuMapper
{
    /**
     * @author SRIC
     *
     * 获取 permission_main_menu 数据列表 分页
     * 根据 level 升序排列
     */
    @Select(value = "SELECT * FROM `permission_main_menu` ORDER BY level ASC LIMIT #{limitBefore}, #{limitSize}")
    List<PermissionMainMenu> getPermissionMainMenuList(PermissionMainMenuListRequestPojo permissionMainMenuListRequest);

    /**
     * @author SRIC
     *
     * 获取 permission_main_menu 数据列表数量
     */
    @Select(value = "SELECT COUNT(*) FROM `permission_main_menu`")
    int getPermissionMainMenuCount();

    /**
     * @author SRIC
     *
     * 添加一条 permission_main_menu
     */
    @Insert(value = "INSERT INTO `permission_main_menu` (uuid, name, level, description) VALUES(UUID(),#{name},#{level},#{description})")
    int insertPermissionMainMenu(PermissionMainMenu permissionMainMenu);

    /**
     * @author SRIC
     *
     * 修改一条 permission_main_menu
     */
    @Update(value = "UPDATE `permission_main_menu` SET name = #{name}, level = #{level}, description = #{description} WHERE uuid = #{uuid}")
    int updatePermissionMainMenu(PermissionMainMenu permissionMainMenu);

    /**
     * @author SRIC
     *
     * 在 permission_main_menu 中查询是否有重复名称
     */
    @Select(value = "SELECT COUNT(*) FROM `permission_main_menu` WHERE name = #{name}")
    int getPermissionMainMenuCountByName(PermissionMainMenu permissionMainMenu);
}

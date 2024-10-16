package com.spring.springboot.permissionRequest;

import com.spring.springboot.libraryCategory.LibraryCategory;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 permission_request 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface PermissionRequestMapper
{
    /**
     * @author SRIC
     *
     * 获取 permissionRequest 数据列表 分页
     */
    @Select(value = "SELECT * FROM `permission_request` LIMIT #{limitBefore}, #{limitSize}")
    List<PermissionRequest> getPermissionRequestList(PermissionRequestListRequestPojo permissionRequestListRequest);

    /**
     * @author SRIC
     *
     * 获取 permissionRequest 数据列表数量
     */
    @Select(value = "SELECT COUNT(*) FROM `permission_request`")
    int getPermissionRequestCount();

    /**
     * @author SRIC
     *
     * 添加一条 permissionRequest
     */
    @Insert(value = "INSERT INTO `permission_request` (uuid, request_mapping, level, description) VALUES(UUID(),#{requestMapping},#{level},#{description})")
    int insertPermissionRequest(PermissionRequest permissionRequest);

    /**
     * @author SRIC
     *
     * 添加一条 permissionRequest
     */
    @Update(value = "UPDATE `permission_request` SET request_mapping = #{requestMapping}, level = #{level}, description = #{description} WHERE uuid = #{uuid}")
    int updatePermissionRequest(PermissionRequest permissionRequest);

    /**
     * @author SRIC
     *
     * 在 permission_request 中查询是否有重复名称
     */
    @Select(value = "SELECT COUNT(*) FROM `permission_request` WHERE request_mapping = #{requestMapping}")
    int getPermissionRequestCountByRequestMapping(PermissionRequest permissionRequest);
}

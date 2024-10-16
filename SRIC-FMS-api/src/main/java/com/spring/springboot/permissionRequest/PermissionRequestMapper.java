package com.spring.springboot.permissionRequest;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

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
     * 获取 permissionRequest 数据列表
     */
    @Select(value = "SELECT * FROM `permission_request`")
    List<PermissionRequest> getPermissionRequestList();


}

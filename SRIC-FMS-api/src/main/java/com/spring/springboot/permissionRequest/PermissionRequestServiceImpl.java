package com.spring.springboot.permissionRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * - - - - - - - - - -
 * permission request 服务类
 * - - - - - - - - - -
 */

@Service
public class PermissionRequestServiceImpl implements PermissionRequestService
{
    @Autowired
    PermissionRequestMapper permissionRequestMapper;

    /**
     * @author SRIC
     *
     * 获取 permission request 数据列表 分页
     */
    @Override
    public List<PermissionRequest> getPErmissionRequestList(PermissionRequestListRequestPojo permissionRequestListRequest)
    {
        permissionRequestListRequest.setLimitSize(20); //一页获取20条数据
        permissionRequestListRequest.setLimitBefore((permissionRequestListRequest.getPage() - 1) * 20); //当前获取数据之前的空缺 （如第一页空缺0条 第二页空缺20条）
        return permissionRequestMapper.getPermissionRequestList(permissionRequestListRequest);
    }

    /**
     * @author SRIC
     *
     * 获取 permission request 数据列表数量
     */
    @Override
    public int getPermissionRequestCount()
    {
        return permissionRequestMapper.getPermissionRequestCount();
    }

    /**
     * @author SRIC
     *
     * 添加一条 permission request
     * 若修改数据条数不为 0 则修改成功
     */
    @Override
    public boolean addPermissionRequest(PermissionRequest permissionRequest)
    {
        int updateNum = permissionRequestMapper.insertPermissionRequest(permissionRequest);
        return updateNum > 0;
    }

    /**
     * @author SRIC
     *
     * 根据 uuid 修改 permission request
     * 若修改数据条数不为 0 则修改成功
     */
    @Override
    public boolean updatePermissionRequest(PermissionRequest permissionRequest)
    {
        int updateNum = permissionRequestMapper.updatePermissionRequest(permissionRequest);
        return updateNum > 0;
    }
}

package com.spring.springboot.permissionRequest;

import com.spring.springboot.response.ResponseCode;
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
     * 添加或修改一条 permission request
     * 若修改数据条数不为 0 则修改成功
     * 若传入 id 则为修改
     * 传入 id 为空则为添加
     */
    @Override
    public ResponseCode addOrUpdatePermissionRequest(PermissionRequest permissionRequest)
    {
        ResponseCode responseCode = new ResponseCode();
        if(permissionRequestMapper.getPermissionRequestCountByRequestMapping(permissionRequest) > 0) //若已有重复的名称
        {
            responseCode.setCode(400);
        }
        else
        {
            if(permissionRequest.getUuid().isEmpty())
            {
                permissionRequestMapper.insertPermissionRequest(permissionRequest);
            }
            else
            {
                permissionRequestMapper.updatePermissionRequest(permissionRequest);
            }
            responseCode.setCode(200);
        }
        return responseCode;
    }
}

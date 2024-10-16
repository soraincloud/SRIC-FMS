package com.spring.springboot.permissionRequest;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * - - - - - - - - - -
 * permission request 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/permissionRequest")
public class PermissionRequestController
{
    @Autowired
    PermissionRequestService permissionRequestService;

    /**
     * @author SRIC
     *
     * 获取 permission request 数据列表 分页
     */
    @GetMapping("/getPermissionRequestList")
    public PermissionRequestListResponsePojo getPermissionRequestList(PermissionRequestListRequestPojo permissionRequestListRequest)
    {
        PermissionRequestListResponsePojo permissionRequestListResponse = new PermissionRequestListResponsePojo();
        permissionRequestListResponse.setPermissionRequestList(permissionRequestService.getPErmissionRequestList(permissionRequestListRequest));
        permissionRequestListResponse.setTotal(permissionRequestListResponse.getTotal());
        return permissionRequestListResponse;
    }

    /**
     * @author SRIC
     *
     * 添加或修改一条 permission request 数据
     */
    @PostMapping("/addOrUpdatePermissionRequest")
    public ResponseCode addOrUpdatePermissionRequest(@RequestBody PermissionRequest permissionRequest)
    {
        return permissionRequestService.addOrUpdatePermissionRequest(permissionRequest);
    }
}

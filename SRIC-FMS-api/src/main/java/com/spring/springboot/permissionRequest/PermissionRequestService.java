package com.spring.springboot.permissionRequest;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface PermissionRequestService
{
    List<PermissionRequest> getPermissionRequestList(PermissionRequestListRequestPojo permissionRequestListRequest);
    int getPermissionRequestCount();
    ResponseCode addOrUpdatePermissionRequest(PermissionRequest permissionRequest);
    int getInterfacePermissionLevelByRequestMapping(String requestMapping);
}

package com.spring.springboot.permissionRequest;

import java.util.List;

public interface PermissionRequestService
{
    List<PermissionRequest> getPErmissionRequestList(PermissionRequestListRequestPojo permissionRequestListRequest);
    int getPermissionRequestCount();
    boolean addPermissionRequest(PermissionRequest permissionRequest);
    boolean updatePermissionRequest(PermissionRequest permissionRequest);
}

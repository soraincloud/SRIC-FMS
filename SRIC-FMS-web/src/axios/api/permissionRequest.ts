import { get,post } from '@/axios/axios'

export function getPermissionRequestList(params:any)
{
    return get('/permissionRequest/getPermissionRequestList',params)
}

export function addOrUpdatePermissionRequest(params:any)
{
    return post('/permissionRequest/addOrUpdatePermissionRequest',params)
}
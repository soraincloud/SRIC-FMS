import { get,post } from '@/axios/axios'

export function getPermissionMainMenuList(params:any)
{
    return get('/permissionMainMenuManage/getPermissionMainMenuList',params)
}

export function addOrUpdatePermissionMainMenu(params:any)
{
    return post('/permissionMainMenuManage/addOrUpdatePermissionMainMenu',params)
}

export function getPermissionMainMenu(params:any)
{
    return get('/permissionMainMenu/getPermissionMainMenu',params)
}
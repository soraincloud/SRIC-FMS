import { get,post } from '@/axios/axios'

export function getUserMessageList(params:any)
{
    return get('/user/getUserMessageList',params)
}

export function updateUsernameById(params:any)
{
    return post('/user/updateUsernameById',params)
}

export function updatePasswordById(params:any)
{
    return post('/user/updatePasswordById',params)
}
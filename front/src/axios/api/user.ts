import { get,post } from '@/axios/axios'

export function getUserMessageList(params:any)
{
    return get('/user/getUserMessageList',params)
}
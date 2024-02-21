import { get } from '@/axios/axios'

export function getHVideoList(params:any)
{
    return get('/h/getHVideoList',params)
}
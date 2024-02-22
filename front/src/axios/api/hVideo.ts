import { get } from '@/axios/axios'

export function getHVideoList(params:any)
{
    return get('/h/getHVideoList',params)
}

export function getHVideoById(params:any)
{
    return get('/h/getHVideoById',params)
}
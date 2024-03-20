import { get } from '@/axios/axios'

export function getHComicList(params:any)
{
    return get('/h/getHComicList',params)
}

export function getHComicById(params:any)
{
    return get('/h/getHComicById',params)
}
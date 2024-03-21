import { get,post } from '@/axios/axios'

export function getHVideoList(params:any)
{
    return get('/h/getHVideoList',params)
}

export function getHVideoById(params:any)
{
    return get('/h/getHVideoById',params)
}

export function getHVideoTagList(params:any)
{
    return get('/h/getHVideoTagList',params)
}

export function addHVideoTag(params:any)
{
    return post('/h/addHVideoTag',params)
}
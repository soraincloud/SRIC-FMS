import { get,post } from '@/axios/axios'

export function getHComicList(params:any)
{
    return get('/h/getHComicList',params)
}

export function getHComicById(params:any)
{
    return get('/h/getHComicById',params)
}

export function getHComicTagList(params:any)
{
    return get('/h/getHComicTagList',params)
}

export function addHComicTag(params:any)
{
    return post('/h/addHComicTag',params)
}
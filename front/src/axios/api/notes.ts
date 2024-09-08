import { get } from '@/axios/axios'

export function getNotesCategoryList(params:any)
{
    return get('/notes/getNotesCategoryList',params)
}

export function getNotesList(params:any)
{
    return get('/notes/getNotesList',params)
}

export function getNotesById(params:any)
{
    return get('/notes/getNotesById',params)
}
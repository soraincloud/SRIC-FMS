import { get,post } from '@/axios/axios'

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

export function editNotesData(params:any)
{
    return post('/notes/editNotesData',params)
}

export function addNotes(params:any)
{
    return post('/notes/addNotes',params)
}
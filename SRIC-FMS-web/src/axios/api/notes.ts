import { get,post } from '@/axios/axios'

export function getNotesManageList(params:any)
{
    return get('/notesManage/getNotesManageList',params)
}

export function updateNote(params:any)
{
    return post('/notesManage/updateNote',params)
}

export function getNotesListByUser(params:any)
{
    return get('/notes/getNotesListByUser',params)
}
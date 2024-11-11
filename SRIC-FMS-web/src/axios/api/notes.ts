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

export function addNote(params:any)
{
    return post('/notes/addNote',params)
}

export function deleteNote(params:any)
{
    return post('/notes/deleteNote',params)
}

export function deleteNoteData(params:any)
{
    return post('/notesManage/deleteNoteData',params)
}

export function editNote(params:any)
{
    return post('/notes/editNote',params)
}
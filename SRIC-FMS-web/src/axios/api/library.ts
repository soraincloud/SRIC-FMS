import { get,post } from '@/axios/axios'

export function getLibraryCategoryManageDataList(params:any)
{
    return get('/libraryManage/getLibraryCategoryManageDataList',params)
}

export function getLibraryCategoryList(params:any)
{
    return get('/library/getLibraryCategoryList',params)
}

export function addOrUpdateLibraryCategory(params:any)
{
    return post('/libraryManage/addOrUpdateLibraryCategory',params)
}

export function getLibraryList(params:any)
{
    return get('/library/getLibraryList',params)
}

export function getLibraryById(params:any)
{
    return get('/library/getLibraryById',params)
}

export function editLibraryData(params:any)
{
    return post('/libraryManage/editLibraryData',params)
}

export function addLibrary(params:any)
{
    return post('/libraryManage/addLibrary',params)
}
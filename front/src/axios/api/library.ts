import { get,post } from '@/axios/axios'

export function getLibraryCategoryManageDataList(params:any)
{
    return get('/library/getLibraryCategoryManageDataList',params)
}

export function getLibraryCategoryList(params:any)
{
    return get('/library/getLibraryCategoryList',params)
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
    return post('/library/editLibraryData',params)
}

export function addLibrary(params:any)
{
    return post('/library/addLibrary',params)
}
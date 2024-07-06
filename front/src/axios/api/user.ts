import { get,post } from '@/axios/axios'

export function getUserMessageList(params:any)
{
    return get('/user/getUserMessageList',params)
}

export function updateUsernameByUid(params:any)
{
    return post('/user/updateUsernameByUid',params)
}

export function updatePasswordByUid(params:any)
{
    return post('/user/updatePasswordByUid',params)
}

export function signIn(params:any)
{
    return post('/user/signIn',params)
}

export function getUserMessage(params:any)
{
    return get('/user/getUserMessage',params)
}

export function getCodeByMail(params:any)
{
    return get('/user/getCodeByMail',params)
}
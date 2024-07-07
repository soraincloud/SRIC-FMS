import { get,post } from '@/axios/axios'

export function getUserMessageList(params:any)
{
    return get('/user/getUserMessageList',params)
}

export function updateUsernameByUuid(params:any)
{
    return post('/user/updateUsernameByUuid',params)
}

export function updatePasswordByUuid(params:any)
{
    return post('/user/updatePasswordByUuid',params)
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
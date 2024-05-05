import { get } from '@/axios/axios'

export function getHPictureRandomList(params:any)
{
    return get('/h/getHPictureRandomList',params)
}
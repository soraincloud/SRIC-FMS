import axios, { AxiosResponse } from 'axios';

export function get(url: string, params: any): Promise<AxiosResponse<any>> {
    return axios({
        method: 'get',
        url: `${url}`,
        params: params,
    });
}

export function post(url: string, params: any): Promise<AxiosResponse<any>> {
    return axios({
        method: 'post',
        url: `${url}`,
        data: params,
        headers: { "Content-Type": "application/json" } // 注意这里是 headers，而不是 header
    });
}
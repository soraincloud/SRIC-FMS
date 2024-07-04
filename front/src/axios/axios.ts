import axios, { AxiosResponse } from 'axios';

// 添加请求拦截器
axios.interceptors.request.use(
    (config :any) => {
        // 在请求头中添加一个token
        const token = localStorage.getItem("token")
        config.headers['Authorization'] = token;
        return config;
    },
    (error) => {
        // 处理请求错误
        return Promise.reject(error);
    }
);

// 添加响应拦截器
axios.interceptors.response.use(
    (response :any) => {
        console.log('响应拦截器:', response.data);
        return response;
    },
    (error) => {
        // 处理响应错误
        return Promise.reject(error);
    }
);

//get请求
export function get(url: string, params: any): Promise<AxiosResponse<any>> {
    return axios({
        method: 'get',
        url: `${url}`,
        params: params,
    });
}

//post请求 使用json传参
export function post(url: string, params: any): Promise<AxiosResponse<any>> {
    return axios({
        method: 'post',
        url: `${url}`,
        data: params,
        headers: { "Content-Type": "application/json" }
    });
}
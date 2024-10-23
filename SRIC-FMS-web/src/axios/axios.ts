import axios, { AxiosResponse } from 'axios';
import { ElNotification } from 'element-plus'
import { h } from 'vue'
import i18n from '@/language';
const { t } = i18n.global

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
        console.log('响应拦截器:', response);
        return response;
    },
    (error) => {
        if (error.response && error.response.status === 403) //403 权限不足
        {
            ElNotification({
                title: t("common.noties"),
                message: h('i', { style: 'color: #c93f38' }, t("static.permissionDenied")),
              })
            return Promise.resolve({ data: {}, status: 403, message: "权限不足" });
        }
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
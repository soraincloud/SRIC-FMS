import { createApp } from 'vue'
import App from './App.vue'
import router from './router'//路由
import store from './store'//仓库
import ElementPlus from 'element-plus'//element组件
import 'element-plus/dist/index.css'//element组件的css
import 'element-plus/theme-chalk/dark/css-vars.css'//使用element的黑暗模式css
import * as ElementPlusIconsVue from '@element-plus/icons-vue'//element图标
import axios from 'axios'//ajax请求通信
import VueAxios from 'vue-axios'
import i18n from './language'//多语言

const VLANurl = 'http://192.168.196.0:45565'
const LANurl = 'http://192.168.1.140:45565'
const NETurl = 'http://localhost:45565'

if(localStorage.getItem("line") == "VLAN" || false)
{
    axios.defaults.baseURL = VLANurl
}
else if(localStorage.getItem("line") == "LAN")
{
    axios.defaults.baseURL = LANurl
}
else
{
    axios.defaults.baseURL = NETurl
}

const app = createApp(App)

app.provide('VLANurl',VLANurl)
app.provide('LANurl',LANurl)
app.provide('NETurl',NETurl)

app.use(store)
app.use(router)
app.use(ElementPlus)
app.use(i18n)
app.use(VueAxios, axios)

for (const [key, component] of Object.entries(ElementPlusIconsVue))//注册所有element图标
{
    app.component(key, component)
}

app.mount('#app')

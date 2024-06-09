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

axios.defaults.baseURL = 'http://192.168.196.0:5000'

const app = createApp(App)

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

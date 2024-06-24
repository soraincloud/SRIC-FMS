<template>
  <div class="app">
    <el-container>
      <el-header>
        <el-menu
        :default-active="defaultActiveMenu"
        :ellipsis="false"
        mode="horizontal"
        router
        >
          <div class="flex-grow-1"></div>
          <el-menu-item index="home">
            <el-icon size="100px">
              <Management />
            </el-icon>
            <span class="app-menu-title-span-big">SRIC</span>
            <span class="app-menu-title-span-small">FMS</span>
          </el-menu-item>
          <div class="flex-grow-10"></div>
          <el-menu-item index="Hfiles">
            <span class="app-menu-item-span">H-files</span>
          </el-menu-item>
          <el-switch
            v-model="isDarkModeOpen"
            active-action-icon="MoonNight"
            inactive-action-icon="Sunrise"
            class="app-menu-switch"
            size="large"
            @change="changeDarkMode"
          />
          <div class="flex-grow-1"></div>
        </el-menu>
      </el-header>
      <el-main>
        <router-view/>
      </el-main>
    </el-container>
    <el-card class="app-user-message-card" :style="[ userMessageStyleLeft,userMessageStyleTop ]">
      <div>
        <el-button class="app-user-message-card-switch-button" v-if="!isHide" @click="clickHide" link>
          <el-icon>
            <ArrowDownBold />
          </el-icon>
        </el-button>
        <el-button class="app-user-message-card-switch-button" v-if="isHide" @click="clickShow" link>
          <el-icon>
            <ArrowUpBold />
          </el-icon>
        </el-button>
      </div>
      <div class="app-user-message-card-div">
        <div v-if="isSign" class="app-user-message-card-avatar-div">
          <el-avatar :src="avatarUrl"></el-avatar>
          <span class="app-user-message-card-avatar-span">{{ username }}</span>
        </div>
        <div v-if="!isSign">
          <el-button type="primary" class="app-user-message-card-sign-button" @click="clickSignIn" text>{{ $t("common.signin") }}</el-button>
          <el-button type="primary" class="app-user-message-card-sign-button" @click="clickSignUp" text>{{ $t("common.signup") }}</el-button>
        </div>
        <div>
          <el-tooltip placement="top" effect="light">
            <template #content>
              <div>{{ $t("common.language") }}</div>
              
              <el-radio-group v-model="language" @change="languageChange">
                <el-radio value="zh" size="small" class="app-user-message-card-language-radio">中文</el-radio>
                <el-radio value="en" size="small" class="app-user-message-card-language-radio">english</el-radio>
              </el-radio-group>
            </template>
            <el-button class="app-user-message-card-setting-button" text circle >
              <el-icon>
                <Collection />
              </el-icon>
            </el-button>
          </el-tooltip>
          <el-tooltip placement="top" effect="light">
            <template #content>{{ $t("common.line") }}</template>
            <el-button class="app-user-message-card-setting-button" text circle >
              <el-icon>
                <Operation />
              </el-icon>
            </el-button>
          </el-tooltip>
          <el-tooltip placement="top" effect="light">
            <template #content>{{ $t("common.management") }}</template>
            <el-button @click="clickManagement" class="app-user-message-card-setting-button" text circle >
              <el-icon>
                <SetUp />
              </el-icon>
            </el-button>
          </el-tooltip>
        </div>
      </div>
    </el-card>
  </div>
</template>

<script lang="ts" setup>
import { useDark, useToggle } from '@vueuse/core'
import { useRoute,useRouter } from 'vue-router'
import { ref,computed } from 'vue'
import axios from 'axios';
import { useI18n } from 'vue-i18n'

const { locale } = useI18n()

const isDark = useDark()//黑暗模式所需变量
let route = useRoute()
let router = useRouter()
const defaultActiveMenu = computed( () => { return route.name })//访问页面时默认菜单选项
const isDarkModeOpen = ref(false)//当前是否为黑暗模式
if(localStorage.getItem('vueuse-color-scheme') == 'auto')//通过当前模式设置开关状态
{
  isDarkModeOpen.value = true
}
const userMessageLeft = ref(10) //悬浮窗距离左侧距离
const userMessageTop = ref(window.innerHeight - 90) //悬浮窗距离顶部距离
const userMessageStyleLeft = ref("left: " + userMessageLeft.value + "px;") //个人信息浮动卡片的左侧位置
const userMessageStyleTop = ref("top: " + userMessageTop.value + "px;") //个人信息浮动卡片的顶部位置
const avatarUrl = ref(axios.defaults.baseURL + "/userAvatar/NULL.webp") //头像URL
const username = ref("null") //用户名显示
const isSign = ref(false) //是否已经登录
const isHide = ref(false) //个人信息浮动卡片是否隐藏
const language = ref("en") //切换按钮绑定的语言

const changeDarkMode = () => //改变模式
{
  setTimeout( () => //延时是为了按钮切换动画能够完整播放
  {
    const toggleDark = useToggle(isDark)
    toggleDark()
  },
  150
  )
}

const clickHide = () => //点击隐藏个人信息卡片
{
  isHide.value = true
  loadUserMessagePosition()
}

const clickShow = () => //点击显示个人信息卡片
{
  isHide.value = false
  loadUserMessagePosition()
}

const clickSignIn = () => //点击登录
{
  router.push("Signin")
}

const clickSignUp = () => //点击注册
{

}

const clickManagement = () => //点击管理
{
  const isManage = localStorage.getItem("isManage") == "1"
  if(isManage)
  {
    router.push('home')
    localStorage.setItem("isManage","0")
  }
  else
  {
    router.push('Manage')
    localStorage.setItem("isManage","1")
  }
}

const languageChange = (lang :any) => //语言改变
{
  locale.value = lang
  localStorage.setItem("language",lang)
}

const setUserMessagePosition = () => //重新加载个人信息卡片位置
{
  userMessageStyleLeft.value = "left: " + userMessageLeft.value + "px;"
  userMessageStyleTop.value = "top: " + userMessageTop.value + "px;"
}

const computeUserMessagePosition = () => //根据是否登录计算个人信息卡片位置
{
  if(isSign.value) //已经登陆
  {
    userMessageLeft.value = 10
    userMessageTop.value = window.innerHeight - 90
  }
  else //未登录
  {
    userMessageLeft.value = 10
    userMessageTop.value = window.innerHeight - 80
  }
  if(isHide.value)
  {
    userMessageTop.value += 50
  }
}

const checkSignLocalStorage = () => //检查是否登录的localStorage
{
  if(localStorage.getItem("isLogin") || false) //没有值即为false
  {
    isSign.value = true
  }
  else
  {
    isSign.value = false
  }
  loadUserMessagePosition()
}

const checkLanguageLocalStorage = () => //检查当前语言的localStorage
{
  if(localStorage.getItem("language") == "zh")
  {
    language.value = "zh"
  }
  else
  {
    language.value = "en"
  }
}

const loadUserMessagePosition = () => //计算并加载个人信息卡片
{
  computeUserMessagePosition()
  setUserMessagePosition()
}

const windowSizeChange = () => //窗口大小变化时重新计算并设置个人信息卡片位置
{
  loadUserMessagePosition()
}

checkSignLocalStorage() //初始化时检查一次登录状态
checkLanguageLocalStorage() //初始化时获取当前语言
 
window.addEventListener('resize',windowSizeChange) //监听窗口变动

//下面的内容为解决使用el-table时报错ResizeObserver loop completed with undelivered notifications
const debounce = (fn :any, delay :any) => {
  let timer :any
   return (...args :any) => {
     if (timer) {
       clearTimeout(timer)
     }
     timer = setTimeout(() => {
       fn(...args)
     }, delay)
   }
}
  
const _ResizeObserver = window.ResizeObserver;
window.ResizeObserver = class ResizeObserver extends _ResizeObserver{
   constructor(callback :any) {
     callback = debounce(callback, 200);
     super(callback);
   }
}
</script>

<style>
.app .el-header  
{
  padding: 0;
}

.flex-grow-1
{
  flex-grow: 1;
}

.flex-grow-10
{
  flex-grow: 10;
}

.app-menu-title-span-big
{
  font-size: 30px;
  font-weight: 900;
  margin-right: 10px;
}

.app-menu-title-span-small
{
  font-size: 15px;
  font-weight: 900;
}

.app-menu-item-span
{
  font-size: 15px;
  font-weight: 900;
}

.app-menu-switch
{
  margin-left: 10px;
  margin-top: 10px;
  --el-switch-on-color: #555555 !important;
}

.app-user-message-card
{
  position: fixed;
}

.app-user-message-card .el-card__body
{
  padding: 10px;
  padding-top: 5px;
}

.app-user-message-card-switch-button
{
  width: 100%;
}

.app-user-message-card-div
{
  display: flex;
  align-items: center;
}

.app-user-message-card-avatar-div
{
  display: flex;
  align-items: center;
}

.app-user-message-card-avatar-span
{
  margin-left: 10px
}

.app-user-message-card-sign-button
{
  margin: 0px !important;
}

.app-user-message-card-language-radio

{
  width: 100%;
}

.app-user-message-card-setting-button
{
  margin: 0px !important;
}

.app-user-message-setting-card
{
  position: fixed;
}

:deep(.el-radio-group)
{
  display: block;
}

:deep(.el-radio)
{
  display: block;
}
</style>
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
          <div class="app-user-message-div">
            <div class="app-user-message-setting-button-div">
              <el-tooltip placement="top" effect="light">
                <template #content>
                  <div>{{ $t("common.language") }}</div>
                  <el-radio-group v-model="language" @change="languageChange">
                    <el-radio value="zh" size="small" class="app-user-message-language-radio">中文</el-radio>
                    <el-radio value="en" size="small" class="app-user-message-language-radio">english</el-radio>
                  </el-radio-group>
                </template>
                <el-button class="app-user-message-setting-button" text circle >
                  <el-icon>
                    <Collection />
                  </el-icon>
                </el-button>
              </el-tooltip>
              <el-tooltip placement="top" effect="light">
                <template #content>{{ $t("common.line") }}</template>
                <el-button class="app-user-message-setting-button" text circle >
                  <el-icon>
                    <Operation />
                  </el-icon>
                </el-button>
              </el-tooltip>
              <el-tooltip placement="top" effect="light">
                <template #content>{{ $t("common.management") }}</template>
                <el-button @click="clickManagement" class="app-user-message-setting-button" text circle >
                  <el-icon>
                    <SetUp />
                  </el-icon>
                </el-button>
              </el-tooltip>
            </div>
            <div v-if="isSign" class="app-user-message-avatar-div">
              <el-avatar :src="avatarUrl" @click="clickAvatar"></el-avatar>
            </div>
            <div v-if="!isSign">
              <el-button type="primary" class="app-user-message-sign-button" @click="clickSignIn" text>{{ $t("common.signin") }}</el-button>
              <el-button type="primary" class="app-user-message-sign-button" @click="clickSignUp" text>{{ $t("common.signup") }}</el-button>
            </div>
          </div>
        </el-menu>
      </el-header>
      <el-main>
        <router-view/>
      </el-main>
    </el-container>
    <el-drawer v-model="personalMenuDrawer" size="300">
      <template #header>
        <div class="app-user-message-avatar-div">
          <el-avatar :src="avatarUrl" @click="clickAvatar"></el-avatar>
          <p class="app-user-message-name">{{ username }}</p>
        </div>
      </template>
      <el-button @click="clickSignOut" class="app-user-message-menu-button" text>
        <el-icon class="app-user-message-menu-icon">
          <SwitchButton />
        </el-icon>
        {{ $t("sign.signout") }}
      </el-button>
    </el-drawer>
    <el-dialog v-model="signOutDialogVisible" width="500">
      <template #header>{{ $t("common.tips") }}</template>
      {{ $t("static.signOutConfirm") }}
      <template #footer>
        <el-button @click="signOutDialogVisible = false" text bg>
          {{ $t("common.cancel") }}
        </el-button>
        <el-button type="danger" @click="clickConfirmSignOut">
          {{ $t("common.confirm") }}
        </el-button>
      </template>
    </el-dialog>
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

const avatarUrl = ref(axios.defaults.baseURL + "/userAvatar/NULL.webp") //头像URL
const username = ref("null") //用户名显示
const isSign = ref(false) //是否已经登录
const language = ref("en") //切换按钮绑定的语言
const personalMenuDrawer = ref(false) //个人菜单抽屉状态
const signOutDialogVisible = ref(false) //退出登录对话框状态

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

const clickSignIn = () => //点击登录
{
  router.push("Signin")
}

const clickSignUp = () => //点击注册
{

}

const clickManagement = () => //点击管理
{
  router.push('Manage')
}

const languageChange = (lang :any) => //语言改变
{
  locale.value = lang
  localStorage.setItem("language",lang)
}

const clickAvatar = () => //点击头像
{
  personalMenuDrawer.value = true
}

const clickSignOut = () => //点击登出
{
  signOutDialogVisible.value = true
}

const clickConfirmSignOut = () => //点击确认登出
{
  localStorage.setItem("isSignIn","false")
  localStorage.removeItem("token")
  isSign.value = false
  signOutDialogVisible.value = false
  personalMenuDrawer.value = false
  router.push("SignIn")
}

const checkSignLocalStorage = () => //检查是否登录的localStorage
{
  if(localStorage.getItem("isSignIn") == "true" || false) //没有值即为false
  {
    isSign.value = true
  }
  else
  {
    isSign.value = false
  }
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

router.beforeEach((to, from, next) => { //路由变动
  checkSignLocalStorage()
  next()
})

const windowSizeChange = () => //窗口大小变化时重新计算并设置个人信息卡片位置
{
  
}

checkSignLocalStorage() //初始化时检查一次登录状态
checkLanguageLocalStorage() //初始化时获取当前语言
 
window.addEventListener('resize',windowSizeChange) //监听窗口变动

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

.app-user-message-div
{
  display: flex;
  align-items: center;
}

.app-user-message-setting-button-div
{
  margin-left: 10px;
}

.app-user-message-avatar-div
{
  display: flex;
  align-items: center;
  margin-left: 10px;
  margin-right: 10px;
}

.app-user-message-name
{
  margin-left: 20px;
  font-weight: bold;
  color: black;
}

html.dark .app-user-message-name
{
  color: white;
}

.app-user-message-menu-button
{
  width: 100%;
}

.app-user-message-menu-icon
{
  margin-right: 10px;
}

.app-user-message-sign-button
{
  margin: 0px !important;
}

.app-user-message-language-radio

{
  width: 100%;
}

.app-user-message-setting-button
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
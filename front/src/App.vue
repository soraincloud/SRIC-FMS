<template>
  <div class="app">
    <el-container>
      <el-header>
        <el-menu
        :default-active="deafultActiveMenu"
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
      123
    </el-card>
  </div>
</template>

<script lang="ts" setup>
import { useDark, useToggle } from '@vueuse/core'
import { useRoute } from 'vue-router'
import { ref,computed } from 'vue'

const isDark = useDark()//黑暗模式所需变量
let route = useRoute()
const deafultActiveMenu = computed( () => { return route.name })//访问页面时默认菜单选项
const isDarkModeOpen = ref(false)//当前是否为黑暗模式
if(localStorage.getItem('vueuse-color-scheme') == 'auto')//通过当前模式设置开关状态
{
  isDarkModeOpen.value = true
}
const userMessageLeft = ref(10)
const userMessageTop = ref(window.innerHeight - 100)
const userMessageStyleLeft = ref("left: " + userMessageLeft.value + "px;") //个人信息浮动卡片的左侧位置
const userMessageStyleTop = ref("top: " + userMessageTop.value + "px;") //个人信息浮动卡片的右侧位置


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

const loadUserMessagePosition = () => //重新加载个人信息卡片位置
{
  userMessageStyleLeft.value = "left: " + userMessageLeft.value + "px;"
  userMessageStyleTop.value = "top: " + userMessageTop.value + "px;"
}

const windowSizeChange = () => 
{
  userMessageLeft.value = 10
  userMessageTop.value = window.innerHeight - 100
  loadUserMessagePosition()
}
 
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

.app-user-message-card
{
  position: fixed;
}
</style>
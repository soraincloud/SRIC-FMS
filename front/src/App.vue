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
          <el-menu-item index="H">
            <span class="app-menu-item-span">H</span>
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
  </div>
</template>

<script lang="ts" setup>
import { useDark, useToggle } from '@vueuse/core'
import { ref } from 'vue'

const isDark = useDark()//黑暗模式所需变量
const deafultActiveMenu = ref('home')//访问页面时默认菜单选项
const isDarkModeOpen = ref(false)//当前是否为黑暗模式
if(localStorage.getItem('vueuse-color-scheme') == 'auto')//通过当前模式设置开关状态
{
  isDarkModeOpen.value = true
}


const changeDarkMode = () => //改变模式
{
  setTimeout( () => 
  {
    const toggleDark = useToggle(isDark)
    toggleDark()
  },
  150
  )
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
</style>
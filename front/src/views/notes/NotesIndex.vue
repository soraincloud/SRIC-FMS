<template>
    <div class="common-body-set-width">
        <el-container>
            <el-aside :width="asideWidth">
                <el-menu
                :style="minHeight"
                :default-active="deafultActiveMenu"
                :ellipsis="false"
                :collapse="isCollapse"
                >
                    <el-menu-item index="all">
                        <el-icon :size="25"><Menu /></el-icon>
                        <template #title>
                            <span class="notes-category-item-span">{{ $t("common.all") }}</span>
                        </template>
                    </el-menu-item>
                    <el-menu-item index="1">
                        <el-icon :size="25"><Folder /></el-icon>
                        <template #title>
                            <span class="notes-category-item-span">{{ $t("menu.comic") }}</span>
                        </template>
                    </el-menu-item>
                </el-menu>
            </el-aside>
            <el-main>
                
            </el-main>
        </el-container>
    </div>
</template>

<script lang="ts" setup>
import { ref } from 'vue'

const deafultActiveMenu = "all"//访问页面时默认菜单选项
let minHeight = ref("min-height:" + (window.innerHeight - 100) + "px;")//设置菜单栏高度
let isCollapse = ref(false)
let asideWidth = ref("200px")

const resetMinHeightAndMenu = () =>
{
    minHeight.value = "min-height:" + (window.innerHeight - 100) + "px;" //重置菜单栏高度(适应窗口大小)
    if(window.innerWidth < 800) //在窗口过小时折叠菜单栏
    {
        isCollapse.value = true
        asideWidth.value = "75px"
    }
    else
    {
        isCollapse.value = false
        asideWidth.value = "200px"
    }
}

resetMinHeightAndMenu()

window.addEventListener('resize',resetMinHeightAndMenu) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.notes-category-item-span
{
    font-size: 20px;
    font-weight: bold;
}
</style>
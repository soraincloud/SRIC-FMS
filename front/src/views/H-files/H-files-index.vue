<template>
      <div class="common-body-set-width">
        <el-container>
            <el-aside width="200px">
                <el-menu
                :style="minHeight"
                :default-active="deafultActiveMenu"
                :ellipsis="false"
                router
                >
                    <el-menu-item index="HfilesVideo">
                        <span class="H-files-index-menu-item-span">video</span>
                    </el-menu-item>
                    <el-menu-item index="HfilesComic">
                        <span class="H-files-index-menu-item-span">comic</span>
                    </el-menu-item>
                    <el-menu-item index="HfilesPicture">
                        <span class="H-files-index-menu-item-span">picture</span>
                    </el-menu-item>
                    <el-menu-item index="HfilesPackage">
                        <span class="H-files-index-menu-item-span">package</span>
                    </el-menu-item>
                </el-menu>
            </el-aside>
            <el-main>
                <router-view></router-view>
            </el-main>
        </el-container>
    </div>
</template>

<script lang="ts" setup>
import { useRoute } from 'vue-router'
import { ref,computed } from 'vue'

let route = useRoute()
const deafultActiveMenu = computed( () => { return route.name })//访问页面时默认菜单选项
let minHeight = ref("min-height:" + (window.innerHeight - 100) + "px;")//设置菜单栏高度

const resetMinHeight = () => ////重置菜单栏高度(适应窗口大小)
{
    minHeight.value = "min-height:" + (window.innerHeight - 100) + "px;"
}

window.addEventListener('resize',resetMinHeight) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.H-files-index-menu-item-span
{
    font-size: 20px;
    font-weight: bold;
}
</style>
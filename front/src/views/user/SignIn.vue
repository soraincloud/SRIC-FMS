<template>
    <div v-if="!isHide">
        <el-row>
            <el-col :span="4"></el-col>
            <el-col :span="7">
                <div :style="textMarginTop">
                    <h1>{{ $t("static.signinTitle") }}</h1>
                </div>
            </el-col>
            <el-col :span="2"></el-col>
            <el-col :span="8">
                <div :style="cardMarginTop">
                    <sign-in-card></sign-in-card>
                </div>
            </el-col>
            <el-col :span="3"></el-col>
        </el-row>
    </div>
    <div v-if="isHide">
        <div class="sign-in-hide-title-div">
            <h1 class="sign-in-hide-title-h1">{{ $t("static.signinTitle") }}</h1>
        </div>
        <div>
            <sign-in-card class="sign-in-hide-card"></sign-in-card>
        </div>
    </div>
</template>

<script lang="ts" setup>
import { ref } from 'vue'
import SignInCard from '@/components/SignInCard.vue'

const textMarginTop = ref("margin-top:" + (window.innerHeight/2 - 100) + "px;") //左侧文字上方距离
const cardMarginTop = ref("margin-top:" + (window.innerHeight/2 - 250) + "px;") //右侧卡片上方距离
const isHide = ref(false) //是否折叠

const windowSizeChanged = () => //窗口大小变化
{
    textMarginTop.value = "margin-top:" + (window.innerHeight/2 - 100) + "px;"
    cardMarginTop.value = "margin-top:" + (window.innerHeight/2 - 250) + "px;"
    if(window.innerWidth < 800) //在窗口过小时折叠
    {
        isHide.value = true
    }
    else
    {
        isHide.value = false
    }
}

windowSizeChanged() //初始化时设置组件位置一次

window.addEventListener('resize',windowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.sign-in-hide-title-div
{
    margin-bottom: 30px;
}

.sign-in-hide-title-h1
{
    text-align: center;
}

.sign-in-hide-card
{
    width: 300px;
    display: block;
    margin: auto;
}
</style>
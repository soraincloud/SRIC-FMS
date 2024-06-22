<template>
    <div v-if="!isHide">
        <el-row>
            <el-col :span="2"></el-col>
            <el-col :span="9">
                <div :style="textMarginTop">
                    <h1>{{ $t("static.signinTitle") }}</h1>
                </div>
            </el-col>
            <el-col :span="2"></el-col>
            <el-col :span="9">
                <div :style="cardMarginTop">
                    <el-card>
                        <el-form :module="form">
                            <el-form-item>
                                <span slot="label">
                                    {{ $t("sign.username") }}
                                </span>
                                <el-input v-model="form.username" clearable></el-input>
                            </el-form-item>
                            <el-form-item>
                                <span slot="label">
                                    {{ $t("sign.password") }}
                                </span>
                                <el-input v-model="form.password" type="password" show-password clearable></el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="success" style="width: 100%;">{{ $t("common.signin") }}</el-button>
                            </el-form-item>
                        </el-form>
                        <div>
                            <el-button type="primary" link>{{ $t("sign.forgotPassword") }}</el-button>
                        </div>
                        <el-divider></el-divider>
                        <div>
                            <span class="sign-in-new-alarm-span">{{ $t("static.newTo") }}</span>
                            <el-button class="sign-in-more-button" type="primary" link>{{ $t("common.signup") }}</el-button>
                        </div>
                    </el-card>
                </div>
            </el-col>
            <el-col :span="2"></el-col>
        </el-row>
    </div>
    <div v-if="isHide">
        <div class="sign-in-hide-title-div">
            <h1 class="sign-in-hide-title-h1">{{ $t("static.signinTitle") }}</h1>
        </div>
        <div>
            <el-card class="sign-in-hide-card">
                <el-form :module="form">
                    <el-form-item>
                        <span slot="label">
                            {{ $t("sign.username") }}
                        </span>
                        <el-input v-model="form.username" clearable></el-input>
                    </el-form-item>
                    <el-form-item>
                        <span slot="label">
                            {{ $t("sign.password") }}
                        </span>
                        <el-input v-model="form.password" type="password" show-password clearable></el-input>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="success" style="width: 100%;">{{ $t("common.signin") }}</el-button>
                    </el-form-item>
                </el-form>
            </el-card>
        </div>
    </div>
</template>

<script lang="ts" setup>
import { ref,reactive } from 'vue'

const textMarginTop = ref("margin-top:" + (window.innerHeight/2 - 100) + "px;") //左侧文字上方距离
const cardMarginTop = ref("margin-top:" + (window.innerHeight/2 - 250) + "px;") //右侧卡片上方距离
const isHide = ref(false) //是否折叠

const form = reactive //登录信息表单
({
    username: '',
    password: '',
})

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

.sign-in-new-alarm-span
{
    font-size: 14px;
}

.sign-in-more-button
{
    float: right;
}
</style>
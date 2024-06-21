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
                    </el-card>
                </div>
            </el-col>
            <el-col :span="2"></el-col>
        </el-row>
    </div>
    <div>
        <div v-if="isHide">
            <h1>{{ $t("static.signinTitle") }}</h1>
        </div>
    </div>
</template>

<script lang="ts" setup>
import { ref,reactive } from 'vue'

const textMarginTop = ref("margin-top:" + (window.innerHeight/2 - 100) + "px;") //左侧文字上方距离
const cardMarginTop = ref("margin-top:" + (window.innerHeight/2 - 200) + "px;") //右侧卡片上方距离
const isHide = ref(false) //是否折叠

const form = reactive //登录信息表单
({
    username: '',
    password: '',
})

const windowSizeChanged = () => //窗口大小变化
{
    textMarginTop.value = "margin-top:" + (window.innerHeight/2 - 100) + "px;"
    cardMarginTop.value = "margin-top:" + (window.innerHeight/2 - 200) + "px;"
    if(window.innerWidth < 800) //在窗口过小时折叠
    {
        isHide.value = true
    }
    else
    {
        isHide.value = false
    }
}

window.addEventListener('resize',windowSizeChanged) //监听窗口变动
</script>
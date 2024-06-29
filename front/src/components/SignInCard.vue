<template>
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
                <el-button @click="clickSignIn" type="success" style="width: 100%;">{{ $t("common.signin") }}</el-button>
            </el-form-item>
        </el-form>
        <div>
            <el-button type="primary" link>{{ $t("sign.forgotPassword") }}</el-button>
        </div>
        <el-divider></el-divider>
        <div>
            <span class="SignInCard-new-alarm-span">{{ $t("static.newTo") }}</span>
            <el-button @click="clickSignUp" class="SignInCard-more-button" type="primary" link>{{ $t("common.signup") }}</el-button>
        </div>
    </el-card>
</template>

<script lang="ts" setup>
import { ref,reactive } from 'vue'
import { signIn } from '@/axios/api/user';
import { ElMessage } from 'element-plus'
import CryptoJS from 'crypto-js' //SHA-256加密
import { useRouter } from "vue-router";

const router = useRouter()

const form = reactive //登录信息表单
({
    username: '',
    password: '',
})

const clickSignIn = async () => //点击登录
{
    let passwordHash = CryptoJS.HmacSHA256(form.password,"SRIC") //使用SHA-256进行哈希运算
    let passwordHashString = CryptoJS.enc.Hex.stringify(passwordHash) //将哈希运算的结果进行16进制编码
    const params = 
    {
        username: form.username,
        password: passwordHashString,
    }
    const resp = await signIn(params)
    if(resp.data.code == 200) //登录成功
    {
        localStorage.setItem("token",resp.data.token)
        localStorage.setItem("isLogin","true")
        ElMessage({
            message: '登录成功',
            type: 'success',
        })
        router.push("home")
    }
    else if(resp.data.code == 400) //密码错误
    {
        ElMessage({
            message: '密码错误',
            type: 'warning',
        })
    }
    else if(resp.data.code == 404) //查无用户
    {
        ElMessage({
            message: '查无此用户',
            type: 'warning',
        })
    }
    else //参数错误
    {
        ElMessage({
            message: '参数错误',
            type: 'error',
        })
    }
}

const clickSignUp = () => //点击跳转到注册
{
    router.push("SignUp")
}
</script>

<style>
.SignInCard-new-alarm-span
{
    font-size: 14px;
}

.SignInCard-more-button
{
    float: right;
}
</style>
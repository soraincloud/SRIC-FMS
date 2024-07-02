<template>
    <el-card>
        <el-form ref="signInFormRef" :model="signInForm" :rules="signInFormRules">
            <el-form-item prop="username">
                <span slot="label">
                    {{ $t("sign.username") }}
                </span>
                <el-input v-model="signInForm.username" clearable></el-input>
            </el-form-item>
            <el-form-item prop="password">
                <span slot="label">
                    {{ $t("sign.password") }}
                </span>
                <el-input v-model="signInForm.password" type="password" show-password clearable></el-input>
            </el-form-item>
            <el-form-item>
                <el-button @click="clickSignIn(signInFormRef)" type="success" style="width: 100%;">{{ $t("common.signin") }}</el-button>
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
import { ref,reactive,h } from 'vue'
import { signIn } from '@/axios/api/user';
import { ElMessage } from 'element-plus'
import CryptoJS from 'crypto-js' //SHA-256加密
import { useRouter } from "vue-router";
import i18n from '@/language';
import type { FormInstance } from 'element-plus'

const { t } = i18n.global

const router = useRouter()

const signInForm = reactive //登录信息表单
({
    username: '',
    password: '',
})

const signInFormRef = ref<FormInstance>() //登录信息表单的ref

const signInFormRules = reactive //登录信息表单的rule
({
    username:
    [
        { required: true, message: t("rules.username"), trigger: 'blur' },
    ],
    password:
    [
        { required: true, message: t("rules.password"), trigger: 'blur' },
    ],
})

const doSignInRequest = async () =>
{
    let passwordHash = CryptoJS.HmacSHA256(signInForm.password,"SRIC") //使用SHA-256进行哈希运算
    let passwordHashString = CryptoJS.enc.Hex.stringify(passwordHash) //将哈希运算的结果进行16进制编码
    const params = 
    {
        username: signInForm.username,
        password: passwordHashString,
    }
    const resp = await signIn(params)
    if(resp.data.code == 200) //登录成功
    {
        localStorage.setItem("token",resp.data.token)
        localStorage.setItem("isSignIn","true")
        ElMessage({
            message: t("sign.successMessage"),
            type: 'success',
        })
        router.push("home")
    }
    else if(resp.data.code == 400) //密码错误
    {
        ElMessage({
            message: t("sign.wrongMessage"),
            type: 'warning',
        })
    }
    else if(resp.data.code == 404) //查无用户
    {
        ElMessage({
            message: t("sign.notfoundMessage"),
            type: 'warning',
        })
    }
    else //参数错误
    {
        ElMessage({
            message: t("static.paramsError"),
            type: 'error',
        })
    }
}

const clickSignIn = async (formEl: FormInstance | undefined) => //点击登录
{
    if (!formEl) return
    await formEl.validate((valid, fields) => {
        if (valid) {
            doSignInRequest()
        } else {
            console.log('error submit!', fields)
        }
    })
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
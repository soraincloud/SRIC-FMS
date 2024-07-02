<template>
    <el-card>
        <el-form ref="signUpFormRef" :model="signUpForm" :rules="signUpFormRules">
            <el-form-item prop="username">
                <span slot="label">
                    {{ $t("sign.username") }}
                </span>
                <el-input v-model="signUpForm.username" clearable></el-input>
            </el-form-item>
            <el-form-item prop="password">
                <span slot="label">
                    {{ $t("sign.password") }}
                </span>
                <el-input v-model="signUpForm.password" type="password" show-password clearable></el-input>
            </el-form-item>
            <el-form-item prop="passwordRepeat">
                <span slot="label">
                    {{ $t("sign.repeatPassword") }}
                </span>
                <el-input v-model="signUpForm.passwordRepeat" type="password" show-password clearable></el-input>
            </el-form-item>
            <el-form-item prop="mail">
                <span slot="label">
                    {{ $t("user.mail") }}
                </span>
                <el-input v-model="signUpForm.mail" clearable>
                    <template #append>
                        <el-button @click="clickSendCode">{{ $t("sign.sendCode") }}</el-button>
                    </template>
                </el-input>
            </el-form-item>
            <el-form-item prop="code">
                <span slot="label">
                    {{ $t("sign.code") }}
                </span>
                <el-input v-model="signUpForm.code" clearable></el-input>
            </el-form-item>
            <el-form-item>
                <el-button @click="clickSignUp(signUpFormRef)" type="success" style="width: 100%;">{{ $t("common.signup") }}</el-button>
            </el-form-item>
        </el-form>
        <el-divider></el-divider>
        <div>
            <span class="SignInCard-new-alarm-span">{{ $t("static.alreadyHave") }}</span>
            <el-button @click="clickSignIn" class="SignInCard-more-button" type="primary" link>{{ $t("common.signin") }}</el-button>
        </div>
    </el-card>
</template>

<script lang="ts" setup>
import { ref,reactive } from 'vue'
import { signIn } from '@/axios/api/user';
import { ElMessage } from 'element-plus'
import CryptoJS from 'crypto-js' //SHA-256加密
import { useRouter } from "vue-router";
import type { FormInstance } from 'element-plus'
import i18n from '@/language';

const { t } = i18n.global

const router = useRouter()

const signUpForm = reactive //登录信息表单
({
    username: '',
    password: '',
    passwordRepeat: '',
    mail: '',
    code: '',
})

const signUpFormRef = ref<FormInstance>() //注册信息表单的ref

const signUpFormRules = reactive //注册信息表单的rule
({
    username:
    [
        { required: true, message: t("rules.username"), trigger: 'blur' },
    ],
    password:
    [
        { required: true, message: t("rules.password"), trigger: 'blur' },
    ],
    passwordRepeat:
    [
        { required: true, message: t("rules.passwordRepeat"), trigger: 'blur' },
    ],
    mail:
    [
        { required: true, message: t("rules.mail"), trigger: 'blur' },
		{ type: 'email', message: t("rules.mailConfirm"), trigger: 'blur' },
    ],
    code:
    [
        { required: true, message: t("rules.code"), trigger: 'blur' },
    ],
})

const clickSendCode = () => //点击发送验证码
{
    
}

const doSignUpRequest = () => //发送注册请求
{

}

const clickSignUp = async (formEl: FormInstance | undefined) => //点击注册
{
    if (!formEl) return
    await formEl.validate((valid, fields) => {
        if (valid) {
            if(signUpForm.password == signUpForm.passwordRepeat)
            {
                doSignUpRequest()
            }
            else
            {
                ElMessage({
                    message: t("sign.passwordCommon"),
                    type: 'warning',
                })
            }
        } else {
            console.log('error submit!', fields)
        }
    })
}

const clickSignIn = () => //点击跳转到登录
{
    router.push("SignIn")
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
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
                <span slot="label">
                    {{ $t("sign.repeatPassword") }}
                </span>
                <el-input v-model="form.passwordRepeat" type="password" show-password clearable></el-input>
            </el-form-item>
            <el-form-item>
                <span slot="label">
                    {{ $t("user.mail") }}
                </span>
                <el-input v-model="form.mail" clearable>
                    <template #append>
                        <el-button @click="clickSendCode">{{ $t("sign.sendCode") }}</el-button>
                    </template>
                </el-input>
            </el-form-item>
            <el-form-item>
                <span slot="label">
                    {{ $t("sign.code") }}
                </span>
                <el-input v-model="form.code" clearable></el-input>
            </el-form-item>
            <el-form-item>
                <el-button @click="clickSignUp" type="success" style="width: 100%;">{{ $t("common.signup") }}</el-button>
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

const router = useRouter()

const form = reactive //登录信息表单
({
    username: '',
    password: '',
    passwordRepeat: '',
    mail: '',
    code: '',
})

const clickSendCode = () => //点击发送验证码
{
    
}

const clickSignUp = async () => //点击注册
{
    
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
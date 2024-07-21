<template>
    <el-radio-group v-model="lineNow" @change="lineChange">
        <div class="line-select-radio-group-div">
            <el-radio value="VLAN" size="small">虚拟局域网</el-radio>
            <el-radio value="LAN" size="small">局域网</el-radio>
            <el-radio value="NET" size="small">在线</el-radio>
        </div>
    </el-radio-group>
</template>

<script lang="ts" setup>
import { ElMessage } from 'element-plus'
import { ref } from 'vue'
import axios from 'axios';
import i18n from '@/language';
import { useRouter } from 'vue-router'

const { t } = i18n.global

const router = useRouter()

const lineNow = ref("VLAN")

const lineChange = (line:any) => //更改线路
{
    if(line == "VLAN") //虚拟局域网后端地址
    {
        axios.defaults.baseURL = 'http://192.168.196.0:45565';
        localStorage.setItem("line","VLAN")
        router.push("home")
        ElMessage({
            message: t("static.lineChangeTo") + "VLAN",
            type: 'success',
        })
    }
    else if(line == "LAN") //局域网后端地址
    {
        axios.defaults.baseURL = 'http://192.168.1.140:45565';
        localStorage.setItem("line","LAN")
        router.push("home")
        ElMessage({
            message: t("static.lineChangeTo") + "LAN",
            type: 'success',
        })
    }
    else if(line == "NET") //在线后端地址
    {
        localStorage.setItem("line","NET")
        ElMessage({
            message: t("static.lineChangeTo") + "NET",
            type: 'success',
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

const checkLine = () => //检查当前默认线路
{
    const lineNowLocalStorage = localStorage.getItem("line")
    if(lineNowLocalStorage)
    {
        lineNow.value = lineNowLocalStorage
    }
}

checkLine()
</script>

<style>
.line-select-radio-group-div
{
    display: flex;
    flex-direction: column;
}
</style>
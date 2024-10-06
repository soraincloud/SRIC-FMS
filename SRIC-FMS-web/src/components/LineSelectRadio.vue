<template>
    <el-radio-group v-model="lineNow" @change="lineChange">
        <div class="line-select-radio-group-div">
            <el-radio value="VLAN" size="small">{{ $t("common.vlan") }}</el-radio>
            <el-radio value="LAN" size="small">{{ $t("common.lan") }}</el-radio>
            <el-radio value="NET" size="small">{{ $t("common.online") }}</el-radio>
        </div>
    </el-radio-group>
</template>

<script lang="ts" setup>
import { ElMessage } from 'element-plus'
import { ref,inject } from 'vue'
import axios from 'axios';
import i18n from '@/language';
import { useRouter } from 'vue-router'

const { t } = i18n.global

const router = useRouter()

const VLANurl = inject('VLANurl')
const LANurl = inject('LANurl')
const NETurl = inject('NETurl')

const lineNow = ref("VLAN")

const lineChange = (line:any) => //更改线路
{
    if(line == "VLAN") //虚拟局域网后端地址
    {
        axios.defaults.baseURL = VLANurl as string
        localStorage.setItem("line","VLAN")
        router.push("home")
        ElMessage({
            message: t("static.lineChangeTo") + "VLAN",
            type: 'success',
        })
    }
    else if(line == "LAN") //局域网后端地址
    {
        axios.defaults.baseURL = LANurl as string
        localStorage.setItem("line","LAN")
        router.push("home")
        ElMessage({
            message: t("static.lineChangeTo") + "LAN",
            type: 'success',
        })
    }
    else if(line == "NET") //在线后端地址
    {
        axios.defaults.baseURL = NETurl as string
        localStorage.setItem("line","NET")
        router.push("home")
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
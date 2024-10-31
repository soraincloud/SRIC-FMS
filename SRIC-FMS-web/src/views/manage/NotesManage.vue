<template>
    <el-card>
        <el-table :data="tableData" :height="tableHeight">

        </el-table>
    </el-card>
</template>

<script lang="ts" setup>
import { ref,onMounted,reactive } from 'vue'

const tableData = ref([]) //主页面表表格数据
const page = ref(1) //页数
const pageTotal = ref(0) //总条数
const tableHeight = ref((window.innerHeight - 240) + "px") //表格高度
const isDrawerOpen = ref(false) //抽屉是否打开
</script>
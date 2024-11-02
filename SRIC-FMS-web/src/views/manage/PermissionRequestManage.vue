<template>
    <el-card>
        <el-table :data="tableData" :height="tableHeight">
            <el-table-column prop="uuid" width="300">
                <template #header>
                    INTERFACE ID
                </template>
            </el-table-column>
            <el-table-column prop="requestMapping" width="180">
                <template #header>
                    {{ $t("common.interface") }}
                </template>
            </el-table-column>
            <el-table-column prop="level" width="80">
                <template #header>
                    {{ $t("static.permissionLevel") }}
                </template>
                <template #default="scope">
                    <span :style="getStatusColor(scope.row.level)">
                    {{ scope.row.level }}
                    </span>
                </template>
            </el-table-column>
            <el-table-column prop="description">
                <template #header>
                    {{ $t("common.description") }}
                </template>
            </el-table-column>
            <el-table-column fixed="right" label="Operations" width="120">
                <template #header>
                    {{ $t("common.operations") }}
                </template>
                <template #default="scope">
                    <el-button link type="primary" @click="clickEdit(scope.row)">{{ $t("common.edit") }}</el-button>
                </template>
            </el-table-column>
        </el-table>
        <div class="permission-request-manage-pagination-div">
            <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
        </div>
        <el-button @click="clickAdd()" type="warning" class="permission-request-manage-add-button" plain>
            <el-icon>
                <Plus />
            </el-icon>
            <span>{{ $t("common.add") }}</span>
        </el-button>
    </el-card>
    <el-drawer v-model="isDrawerOpen">
        <template #header>
            <span class="permission-request-manage-drawer-title">{{ $t("static.editAndAddInterface") }}</span>
        </template>
        <el-form ref="permissionRequestFormRef" :model="permissionRequestForm" :rules="permissionRequestFormRules">
            <el-form-item prop="requestMapping">
                <h1>{{ $t("common.interface") }}</h1>
                <el-input v-model="permissionRequestForm.requestMapping" maxlength="30" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item prop="level">
                <h1>{{ $t("static.permissionLevel") }}</h1>
                <el-select v-model="permissionRequestForm.level">
                    <el-option v-for="(item,i) in levels" :key="i" :label="item.label" :value="item.value">
                        <el-tag :color="item.label" class="permission-request-select-color-tag" size="small" />
                        <span :style="{ color: item.label }">{{ $t("static.permissionLevel") }} : {{ item.value }}</span>
                    </el-option>
                    <template #label="{ label, value }">
                        <span>{{ $t("static.permissionLevel") }} : {{ value }}</span>
                    </template>
                </el-select>
            </el-form-item>
            <el-form-item prop="description">
                <h1>{{ $t("common.description") }}</h1>
                <el-input v-model="permissionRequestForm.description" :rows="2" type="textarea" maxlength="25" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item>
                <el-button @click="clickAddOrEditPermissionRequest(permissionRequestFormRef)" type="success">{{ $t("common.submit") }}</el-button>
            </el-form-item>
        </el-form>
    </el-drawer>
</template>

<script lang="ts" setup>
import { ref,onMounted,reactive } from 'vue'
import { getPermissionRequestList,addOrUpdatePermissionRequest } from '@/axios/api/permissionRequest';
import { getStatusColor,getStatusColorCode } from '@/tools/tool'
import type { FormInstance } from 'element-plus'
import { ElMessage } from 'element-plus' //element消息
import i18n from '@/language';
const { t } = i18n.global

const tableData = ref([]) //主页面表表格数据
const page = ref(1) //页数
const pageTotal = ref(0) //总条数
const tableHeight = ref((window.innerHeight - 290) + "px") //表格高度
const isDrawerOpen = ref(false) //抽屉是否打开
const permissionRequestForm = reactive //接口数据输入表单
({
    requestMapping: "",
    level: "",
    description: "",
})
const permissionRequestFormRef = ref<FormInstance>() //添加 permissionRequest 表单的 ref
const permissionRequestFormRules = reactive //添加 permissionRequest 表单的 rule
({
    requestMapping:
    [
        { required: true, message: t("rules.interface"), trigger: 'blur' },
    ],
    level:
    [
        { required: true, message: t("rules.permissionLevel"), trigger: 'blur' },
    ],
    description:
    [
        { required: true, message: t("rules.description"), trigger: 'blur' },
    ],
})
const levels = 
[
    {
        value: '1',
        label: '#c93f38',
    },
    {
        value: '2',
        label: '#e56e24',
    },
    {
        value: '3',
        label: '#eec400',
    },
    {
        value: '4',
        label: '#a59344',
    },
    {
        value: '5',
        label: '#76b583',
    },
    {
        value: '6',
        label: '#008a60',
    },
    {
        value: '7',
        label: '#65a7dd',
    },
    {
        value: '8',
        label: '#00035b',
    },
    {
        value: '9',
        label: '#7249d6',
    },
    {
        value: '10',
        label: '#9c52f2',
    },
]
const permissionRequestEditUuid = ref("") //修改的类别 uuid

const getPermissionRequestData = async () => //获取接口列表
{
    try
    {
        const params =
        {
            page: page.value,
        }
        const resp = await getPermissionRequestList(params)
        pageTotal.value = resp.data.total
        tableData.value = resp.data.permissionRequestList
    } catch {}
}

onMounted( () =>
{
    getPermissionRequestData()
})

const pageChange = () => //翻页
{
    getPermissionRequestData()
}

const clickEdit = (row:any) => //点击编辑按钮
{
    permissionRequestForm.requestMapping = row.requestMapping
    permissionRequestForm.level = row.level
    permissionRequestForm.description = row.description
    isDrawerOpen.value = true
    permissionRequestEditUuid.value = row.uuid
}

const clickAdd = () => //点击新增按钮
{
    permissionRequestForm.requestMapping = ""
    permissionRequestForm.level = ""
    permissionRequestForm.description = ""
    isDrawerOpen.value = true
    permissionRequestEditUuid.value = ""
}

const doAddOrEditPermissionRequest = async () =>
{
    try
    {
        const params =
        {
            uuid: permissionRequestEditUuid.value,
            requestMapping: permissionRequestForm.requestMapping,
            level: permissionRequestForm.level,
            description: permissionRequestForm.description,
        }
        const resp = await addOrUpdatePermissionRequest(params)
        if(resp.data.code == 200)
        {
            ElMessage({
                message: t("static.submitSuccess"),
                type: 'success',
            })
        }
        else if(resp.data.code == 400)
        {
            ElMessage({
                message: t("static.nameHasBeenUsed"),
                type: 'warning',
            })
        }
        else
        {
            ElMessage({
                message: t("static.paramsError"),
                type: 'error',
            })
        }
        getPermissionRequestData()
        isDrawerOpen.value = false
    } catch {}
}

const clickAddOrEditPermissionRequest = async (formEl: FormInstance | undefined) => //点击添加或修改 permissionRequest 提交
{
    if (!formEl) return
    await formEl.validate((valid, fields) => {
        if (valid) {
            doAddOrEditPermissionRequest()
        } else {
            console.log('error submit!', fields)
        }
    })
}

const onWindowSizeChanged = () => //窗口大小变动
{
    tableHeight.value = (window.innerHeight - 290) + "px"
}

window.addEventListener('resize',onWindowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.permission-request-manage-add-button
{
    width: 100%;
    margin-top: 20px;
}

.permission-request-manage-pagination-div
{
    margin-top: 20px;
}

.permission-request-select-color-tag
{
    margin-right: 8px;
    border: none;
    aspect-ratio: 1;
}

.permission-request-manage-drawer-title
{
    font-weight: bold;
}
</style>
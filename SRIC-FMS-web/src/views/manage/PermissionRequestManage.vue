<template>
    <el-card>
        <el-table :data="tableData" :height="tableHeight">
            <el-table-column prop="uuid">
                <template #header>
                    INTERFACE ID
                </template>
            </el-table-column>
            <el-table-column prop="requestMapping">
                <template #header>
                    {{ $t("common.name") }}
                </template>
            </el-table-column>
            <el-table-column prop="level">
                <template #header>
                    {{ $t("static.itemNumber") }}
                </template>
            </el-table-column>
            <el-table-column prop="description">
                <template #header>
                    {{ $t("static.itemNumber") }}
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
        <el-button @click="clickAdd()" type="warning" class="library-category-manage-add-button" plain>
            <el-icon>
                <Plus />
            </el-icon>
            <span>{{ $t("common.add") }}</span>
        </el-button>
    </el-card>
    <el-drawer v-model="isDrawerOpen">
        <template #header>
            <span class="UserManage-drawer-title">{{ $t("static.editAndAddCategory") }}</span>
        </template>
        <el-form ref="permissionRequestFormRef" :model="permissionRequestForm" :rules="permissionRequestFormRules">
            <el-form-item prop="requestMapping">
                <h1>{{ $t("common.name") }}</h1>
                <el-input v-model="permissionRequestForm.requestMapping" maxlength="10" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item prop="level">
                <h1>{{ $t("common.name") }}</h1>
                <el-input v-model="permissionRequestForm.level" maxlength="10" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item prop="description">
                <h1>{{ $t("common.name") }}</h1>
                <el-input v-model="permissionRequestForm.description" maxlength="10" show-word-limit clearable></el-input>
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
import type { FormInstance } from 'element-plus'
import { ElMessage } from 'element-plus' //element消息
import i18n from '@/language';
const { t } = i18n.global

const tableData = ref([]) //主页面表表格数据
const page = ref(1) //页数
const pageTotal = ref(0) //总条数
const tableHeight = ref((window.innerHeight - 290) + "px") //表格高度
const isDrawerOpen = ref(false) //抽屉是否打开
const permissionRequestForm = reactive //接口数据输入
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
        { required: true, message: t("rules.name"), trigger: 'blur' },
    ],
    level:
    [
        { required: true, message: t("rules.name"), trigger: 'blur' },
    ],
    description:
    [
        { required: true, message: t("rules.name"), trigger: 'blur' },
    ],
})
const permissionRequestEditUuid = ref("") //修改的类别 uuid

const getPermissionRequestData = async () => //获取接口列表
{
    const params =
    {
        page: page.value,
    }
    const resp = await getPermissionRequestList(params)
    pageTotal.value = resp.data.total
    tableData.value = resp.data.permissionRequestList
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

.library-category-manage-add-button
{
    width: 100%;
    margin-top: 20px;
}

.permission-request-manage-pagination-div
{
    margin-top: 20px;
}
</style>
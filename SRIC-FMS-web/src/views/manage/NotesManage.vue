<template>
    <el-card>
        <el-table :data="tableData" :height="tableHeight">
            <el-table-column prop="uuid" width="300">
                <template #header>
                    ID
                </template>
            </el-table-column>
            <el-table-column prop="title" width="180">
                <template #header>
                    {{ $t("common.title") }}
                </template>
            </el-table-column>
            <el-table-column prop="text">
                <template #header>
                    {{ $t("common.content") }}
                </template>
            </el-table-column>
            <el-table-column prop="username">
                <template #header>
                    {{ $t("static.userBelongs") }}
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
        <div class="notes-manage-pagination-div">
            <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
        </div>
    </el-card>
    <el-drawer v-model="isDrawerOpen">
        <template #header>
            <span class="notes-manage-drawer-title">{{ $t("static.editNote") }}</span>
        </template>
        <el-form ref="notesFormRef" :model="notesForm" :rules="notesFormRules">
            <el-form-item prop="title">
                <h1>{{ $t("common.title") }}</h1>
                <el-input v-model="notesForm.title" maxlength="20" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item prop="text">
                <h1>{{ $t("common.content") }}</h1>
                <el-input v-model="notesForm.text" :rows="2" type="textarea" maxlength="25" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item>
                <el-button @click="clickUpdateNote(notesFormRef)" type="success">{{ $t("common.submit") }}</el-button>
            </el-form-item>
        </el-form>
    </el-drawer>
</template>

<script lang="ts" setup>
import { ref,onMounted,reactive } from 'vue'
import { getNotesManageList,updateNote } from '@/axios/api/notes';
import type { FormInstance } from 'element-plus'
import { ElMessage } from 'element-plus' //element消息
import i18n from '@/language';
const { t } = i18n.global

const tableData = ref([]) //主页面表表格数据
const page = ref(1) //页数
const pageTotal = ref(0) //总条数
const tableHeight = ref((window.innerHeight - 240) + "px") //表格高度
const isDrawerOpen = ref(false) //抽屉是否打开
const notesForm = reactive //接口数据输入
({
    title: "",
    text: "",
})
const notesFormRef = ref<FormInstance>() //添加 notes 表单的 ref
const notesFormRules = reactive //添加 notes 表单的 rule
({
    title:
    [
        { required: true, message: t("rules.title"), trigger: 'blur' },
    ],
    text:
    [
        { required: true, message: t("rules.content"), trigger: 'blur' },
    ],
})
const notesEditUuid = ref("") //修改的note uuid

const getNotesData = async () => //获取接口列表
{
    try
    {
        const params =
        {
            page: page.value,
        }
        const resp = await getNotesManageList(params)
        pageTotal.value = resp.data.total
        tableData.value = resp.data.notesList
    } catch {}
}

onMounted( () =>
{
    getNotesData()
})

const pageChange = () => //翻页
{
    getNotesData()
}

const clickEdit = (row:any) => //点击编辑按钮
{
    notesForm.title = row.title
    notesForm.text = row.text
    isDrawerOpen.value = true
    notesEditUuid.value = row.uuid
}

const doEditnote = async () =>
{
    try
    {
        const params =
        {
            uuid: notesEditUuid.value,
            title: notesForm.title,
            text: notesForm.text,
        }
        const resp = await updateNote(params)
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
        getNotesData()
        isDrawerOpen.value = false
    } catch {}
}

const clickUpdateNote = async (formEl: FormInstance | undefined) => //点击修改 notes 提交
{
    if (!formEl) return
    await formEl.validate((valid, fields) => {
        if (valid) {
            doEditnote()
        } else {
            console.log('error submit!', fields)
        }
    })
}

const onWindowSizeChanged = () => //窗口大小变动
{
    tableHeight.value = (window.innerHeight - 240) + "px"
}

window.addEventListener('resize',onWindowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.notes-manage-add-button
{
    width: 100%;
    margin-top: 20px;
}

.notes-manage-pagination-div
{
    margin-top: 20px;
}

.notes-manage-drawer-title
{
    font-weight: bold;
}
</style>
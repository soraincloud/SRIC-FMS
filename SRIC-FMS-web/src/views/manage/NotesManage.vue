<template>
    <el-card>
        <el-table :data="tableData" :height="tableHeight">
            <el-table-column prop="uuid" width="200">
                <template #header>
                    ID
                </template>
            </el-table-column>
            <el-table-column prop="title" width="100">
                <template #header>
                    {{ $t("common.title") }}
                </template>
            </el-table-column>
            <el-table-column prop="text" width="200">
                <template #header>
                    {{ $t("common.content") }}
                </template>
            </el-table-column>
            <el-table-column prop="username">
                <template #header>
                    {{ $t("static.userBelongs") }}
                </template>
            </el-table-column>
            <el-table-column prop="createTime">
                <template #header>
                    {{ $t("common.createTime") }}
                </template>
            </el-table-column>
            <el-table-column prop="isDeleted" width="80">
                <template #header>
                    {{ $t("static.isDeleted") }}
                </template>
                <template #default="scope">
                    <el-icon v-if="scope.row.isDeleted == 0" style="color: #67C23A;"><MessageBox/></el-icon>
                    <el-icon v-if="scope.row.isDeleted == 1" style="color: #F56C6C;"><Delete/></el-icon>
                </template>
            </el-table-column>
            <el-table-column fixed="right" label="Operations" width="120">
                <template #header>
                    {{ $t("common.operations") }}
                </template>
                <template #default="scope">
                    <el-button link type="primary" @click="clickEdit(scope.row)">{{ $t("common.edit") }}</el-button>
                    <el-button link type="danger" @click="clickDelete(scope.row)">{{ $t("common.delete") }}</el-button>
                </template>
            </el-table-column>
        </el-table>
        <div class="notes-manage-pagination-div">
            <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
        </div>
    </el-card>
    <el-drawer v-model="isEditDrawerOpen">
        <template #header>
            <span class="notes-manage-drawer-title">{{ $t("static.editNote") }}</span>
        </template>
        <el-form ref="notesFormRef" :model="notesForm" :rules="notesFormRules">
            <el-form-item prop="title">
                <h1>{{ $t("common.title") }}</h1>
                <el-input v-model="notesForm.title" maxlength="50" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item prop="text">
                <h1>{{ $t("common.content") }}</h1>
                <el-input v-model="notesForm.text" :rows="2" type="textarea" maxlength="300" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item>
                <el-button @click="clickUpdateNote(notesFormRef)" type="success">{{ $t("common.submit") }}</el-button>
            </el-form-item>
        </el-form>
    </el-drawer>
    <el-drawer v-model="isDeleteConfirmDrawerOpen" direction="ttb">
        <template #header>
            <h1>{{ $t("common.warning") }}</h1>
        </template>
        <template #default>
            <div class="notes-manage-delete-confirm-div">
                <div class="notes-manage-delete-confirm-text">{{ $t("static.reallyToDeleteDataConfirm") }}</div>
                <div class="notes-manage-delete-confirm-title">{{ notesDeleteTitle }}</div>
            </div>
        </template>
        <template #footer>
            <el-button type="info" plain @click="clickCancelDelete()">{{ $t("common.no") }}</el-button>
            <el-button type="danger" @click="doDeleteNote()">{{ $t("common.yes") }}</el-button>
        </template>
    </el-drawer>
</template>

<script lang="ts" setup>
import { ref,onMounted,reactive } from 'vue'
import { getNotesManageList,updateNote,deleteNoteData } from '@/axios/api/notes';
import type { FormInstance } from 'element-plus'
import { ElMessage } from 'element-plus' //element消息
import i18n from '@/language';
const { t } = i18n.global

const tableData = ref([]) //主页面表表格数据
const page = ref(1) //页数
const pageTotal = ref(0) //总条数
const tableHeight = ref((window.innerHeight - 240) + "px") //表格高度
const isEditDrawerOpen = ref(false) //编辑抽屉是否打开
const isDeleteConfirmDrawerOpen = ref(false) //确认删除的抽屉是否打开
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
const notesDeleteUuid = ref("") //当前删除的note uuid
const notesDeleteTitle = ref("") //当前删除的note 标题

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
    isEditDrawerOpen.value = true
    notesEditUuid.value = row.uuid
}

const doUpdatenote = async () => //修改 notes
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
        isEditDrawerOpen.value = false
    } catch {}
}

const clickUpdateNote = async (formEl: FormInstance | undefined) => //点击修改 notes 提交
{
    if (!formEl) return
    await formEl.validate((valid, fields) => {
        if (valid) {
            doUpdatenote()
        } else {
            console.log('error submit!', fields)
        }
    })
}

const clickDelete = (row:any) => //点击删除 note
{
    notesDeleteTitle.value = row.title
    notesDeleteUuid.value = row.uuid
    isDeleteConfirmDrawerOpen.value = true
}

const clickCancelDelete = () => //点击取消删除 note
{
    notesDeleteUuid.value = ""
    isDeleteConfirmDrawerOpen.value = false
}

const doDeleteNote = async () => 
{
    try
    {
        const params = 
        {
            uuid: notesDeleteUuid.value
        }
        const resp = await deleteNoteData(params)
        if(resp.data.code == 200)
        {
            ElMessage({
                message: t("static.deleteSuccess"),
                type: 'success',
            })
        }
        else if(resp.data.code == 400)
        {
            ElMessage({
                message: t("static.deleteFailed"),
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
        notesDeleteUuid.value = ""
        isDeleteConfirmDrawerOpen.value = false
        getNotesData()
    } catch {}
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

.notes-manage-delete-confirm-div
{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}

.notes-manage-delete-confirm-text
{
    font-weight: bold;
    font-size: 30px;
}

.notes-manage-delete-confirm-title
{
    font-weight: bold;
    font-size: 20px;
    margin-top: 10px;
}
</style>
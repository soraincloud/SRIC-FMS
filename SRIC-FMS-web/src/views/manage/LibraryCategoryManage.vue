<template>
    <el-card>
        <el-table :data="tableData" :height="tableHeight">
            <el-table-column prop="id">
                <template #header>
                    CATEGORY ID
                </template>
            </el-table-column>
            <el-table-column prop="name">
                <template #header>
                    {{ $t("common.name") }}
                </template>
            </el-table-column>
            <el-table-column prop="libraryNumber">
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
        <el-button @click="clickAdd()" type="warning" class="library-category-manage-add-button" plain>
            <el-icon>
                <Plus />
            </el-icon>
            <span>{{ $t("common.add") }}</span>
        </el-button>
    </el-card>
    <el-drawer v-model="isDrawerOpen">
        <template #header>
            <span class="library-category-manage-drawer-title">{{ $t("static.editAndAddCategory") }}</span>
        </template>
        <el-form ref="categoryFormRef" :model="categoryForm" :rules="categoryFormRules">
            <el-form-item prop="name">
                <h1>{{ $t("common.name") }}</h1>
                <el-input v-model="categoryForm.name" maxlength="10" show-word-limit clearable></el-input>
            </el-form-item>
            <el-form-item>
                <el-button @click="clickAddOrEditCategory(categoryFormRef)" type="success">{{ $t("common.submit") }}</el-button>
            </el-form-item>
        </el-form>
    </el-drawer>
</template>

<script lang="ts" setup>
import { ref,onMounted,reactive } from 'vue'
import { getLibraryCategoryManageDataList,addOrUpdateLibraryCategory } from '@/axios/api/library';
import type { FormInstance } from 'element-plus'
import { ElMessage } from 'element-plus' //element消息
import i18n from '@/language';
const { t } = i18n.global

const tableData = ref([]) //主页面表表格数据
const tableHeight = ref((window.innerHeight - 240) + "px") //表格高度
const isDrawerOpen = ref(false) //抽屉是否打开
const categoryForm = reactive //类别名称输入
({
    name: "",
})
const categoryFormRef = ref<FormInstance>() //添加 libraryCategory 表单的 ref
const categoryFormRules = reactive //添加 libraryCategory 表单的 rule
({
    name:
    [
        { required: true, message: t("rules.name"), trigger: 'blur' },
    ],
})
const categoryEditId = ref(0) //修改的类别 id

const getLibraryCategoryData = async () => //获取类别列表
{
    try
    {
        const resp = await getLibraryCategoryManageDataList({})
        tableData.value = resp.data
    } catch {}
}

onMounted( () =>
{
    getLibraryCategoryData()
})

const clickEdit = (row:any) => //点击编辑按钮
{
    categoryForm.name = row.name
    isDrawerOpen.value = true
    categoryEditId.value = row.id
}

const clickAdd = () => //点击新增按钮
{
    categoryForm.name = ""
    isDrawerOpen.value = true
    categoryEditId.value = 0
}

const doAddOrEditCategory = async () =>
{
    try
    {
        const params =
        {
            id: categoryEditId.value,
            name: categoryForm.name,
        }
        const resp = await addOrUpdateLibraryCategory(params)
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
        getLibraryCategoryData()
        isDrawerOpen.value = false
    } catch {}
}

const clickAddOrEditCategory = async (formEl: FormInstance | undefined) => //点击添加或修改 libraryCategory 提交
{
    if (!formEl) return
    await formEl.validate((valid, fields) => {
        if (valid) {
            doAddOrEditCategory()
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

.library-category-manage-add-button
{
    width: 100%;
    margin-top: 20px;
}

.library-category-maange-drawer-title
{
    font-weight: bold;
}
</style>
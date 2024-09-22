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
                <el-table-column fixed="right" label="Operations" width="120">
                    <template #header>
                        {{ $t("common.operations") }}
                    </template>
                    <template #default="scope">
                        <el-button link type="primary" @click="clickEdit(scope.row)">{{ $t("common.edit") }}</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <el-button type="warning" class="library-category-manage-add-button" plain>
                <el-icon>
                    <Plus />
                </el-icon>
                <span>{{ $t("common.add") }}</span>
            </el-button>
    </el-card>
</template>

<script lang="ts" setup>
import { ref,onMounted } from 'vue'
import { getLibraryCategoryList } from '@/axios/api/library';

const tableData = ref([]) //主页面表表格数据
const tableHeight = ref((window.innerHeight - 240) + "px") //表格高度

const getLibraryCategoryData = async () => //获取类别列表
{
    const resp = await getLibraryCategoryList({})
    tableData.value = resp.data
}

onMounted( () =>
{
    getLibraryCategoryData()
})

const clickEdit = (row:any) =>
{
    console.log(row.id)
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
</style>
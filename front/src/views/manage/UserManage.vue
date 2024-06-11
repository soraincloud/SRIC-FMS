<template>
    <div>
        <el-card>
            <el-table :data="tableData">
                <el-table-column prop="username" label="username" />
                <el-table-column prop="mail" label="mail" />
                <el-table-column prop="createTime" label="sign up time" />
                <el-table-column fixed="right" label="Operations" width="120">
                    <template #default="scope">
                        <el-button link type="primary" @click="clickEdit(scope.row)">Edit</el-button>
                        <el-popconfirm title="Sure to delete?" icon-color="#F56C6C">
                            <template #reference>
                                <el-button link type="danger" @click="clickDelete">Delete</el-button>
                            </template>
                        </el-popconfirm>
                    </template>
                </el-table-column>
            </el-table>
        </el-card>
        <el-drawer v-model="isDrawerOpen" title="edit/add user">
            <h1>username</h1>
            <el-input></el-input>
            <div class="UserManage-drawer-button-div">
                <el-button link type="danger" class="UserManage-drawer-button">edit</el-button>
            </div>
            <h1>password</h1>
            <el-input></el-input>
            <div class="UserManage-drawer-button-div">
                <el-button link type="danger" class="UserManage-drawer-button">edit</el-button>
            </div>
        </el-drawer>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted } from 'vue'
import { getUserMessageList } from '@/axios/api/user'

const tableData = ref([]) //主页面表表格数据
const isDrawerOpen = ref(false) //EDIT的抽屉是否打开

onMounted( () =>
{
    loadTableData()
})

const loadTableData = async () =>
{
    const resp = await getUserMessageList();
    tableData.value = resp.data
}

const clickEdit = (row :any) =>
{
    isDrawerOpen.value = true
}

const clickDelete = (row :any) =>
{

}
</script>

<style>
.UserManage-drawer-button-div
{
    display: flex;
}

.UserManage-drawer-button
{
    margin-left: auto;
    margin-top: 10px;
    font-size: 15px;
}
</style>
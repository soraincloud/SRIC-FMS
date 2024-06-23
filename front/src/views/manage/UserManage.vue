<template>
    <div>
        <el-card>
            <el-table :data="tableData">
                <el-table-column prop="username" label="username" />
                <el-table-column prop="mail" label="mail" />
                <el-table-column prop="createTime" label="sign up time" />
                <el-table-column fixed="right" label="Operations" width="120">
                    <template #default="scope">
                        <el-button link type="primary" @click="clickEdit(scope.row)">{{ $t("common.edit") }}</el-button>
                        <el-popconfirm title="Sure to delete?" icon-color="#F56C6C">
                            <template #reference>
                                <el-button link type="danger" @click="clickDelete">{{ $t("common.delete") }}</el-button>
                            </template>
                        </el-popconfirm>
                    </template>
                </el-table-column>
            </el-table>
        </el-card>
        <el-drawer v-model="isDrawerOpen" title="edit/add user" @close="drawerClose">
            <h1>username</h1>
            <el-input v-model="usernameInput" :disabled="usernameDisabled"></el-input>
            <div class="UserManage-drawer-button-div">
                <el-button v-if="usernameDisabled" @click="clickEditUsername" link type="danger" class="UserManage-drawer-button">{{ $t("manage.editForced") }}</el-button>
                <el-button v-if="!usernameDisabled" @click="clickEditUsernameSubmit" link type="success" class="UserManage-drawer-button">{{ $t("common.submit") }}</el-button>
            </div>
            <h1>password</h1>
            <el-input v-model="passwordInput" :disabled="passwordDisabled"></el-input>
            <div class="UserManage-drawer-button-div">
                <el-button v-if="passwordDisabled" @click="clickEditPassword" link type="danger" class="UserManage-drawer-button">{{ $t("manage.editForced") }}</el-button>
                <el-button v-if="!passwordDisabled" @click="clickEditPasswordSubmit" link type="success" class="UserManage-drawer-button">{{ $t("common.submit") }}</el-button>
            </div>
        </el-drawer>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted } from 'vue'
import { getUserMessageList } from '@/axios/api/user'

const tableData = ref([]) //主页面表表格数据
const isDrawerOpen = ref(false) //EDIT的抽屉是否打开
const usernameDisabled = ref(true) //用户名输入框是否被禁用
const passwordDisabled = ref(true) //密码输入框是否被禁用
const usernameInput = ref("") //用户名输入框内容
const passwordInput = ref("") //密码输入框内容

onMounted( () =>
{
    loadTableData()
})

const loadTableData = async () => //加载列表数据
{
    const resp = await getUserMessageList({});
    tableData.value = resp.data
}

const clickEdit = (row :any) => //点击编辑
{
    isDrawerOpen.value = true
    usernameInput.value = row.username
    passwordInput.value = "*****"
}

const clickDelete = (row :any) => //点击确认删除
{

}

const clickEditUsername = () => //在编辑抽屉中点击强制更改用户名 将输入框设置为可用
{
    usernameDisabled.value = false
}

const clickEditPassword = () => //在编辑抽屉中点击强制更改密码 将输入框设置为可用
{
    passwordDisabled.value = false
}

const drawerClose = () => //抽屉关闭时重置输入框状态为不可用
{
    usernameDisabled.value = true
    passwordDisabled.value = true
}

const clickEditUsernameSubmit = () => //提交对用户名的强制更改
{
    
}

const clickEditPasswordSubmit = () => //提交对密码的强制更改
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
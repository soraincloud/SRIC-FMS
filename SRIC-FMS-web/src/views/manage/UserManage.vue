<template>
    <div>
        <el-card>
            <el-table :data="tableData" :height="tableHeight">
                <el-table-column prop="uid">
                    <template #header>
                        UID
                    </template>
                </el-table-column>
                <el-table-column prop="status">
                    <template #header>
                        {{ $t("common.status") }}
                    </template>
                    <template #default="scope">
                        <span :style="getStatusColor(scope.row.status)">
                        {{ scope.row.status }}
                        </span>
                    </template>
                </el-table-column>
                <el-table-column prop="username">
                    <template #header>
                        {{ $t("user.username") }}
                    </template>
                </el-table-column>
                <el-table-column prop="mail" label="mail">
                    <template #header>
                        {{ $t("user.mail") }}
                    </template>
                </el-table-column>
                <el-table-column prop="createTime">
                    <template #header>
                        {{ $t("user.signUpTime") }}
                    </template>
                </el-table-column>
                <el-table-column fixed="right" label="Operations" width="120">
                    <template #header>
                        {{ $t("common.operations") }}
                    </template>
                    <template #default="scope">
                        <el-button link type="primary" @click="clickEdit(scope.row)">{{ $t("common.edit") }}</el-button>
                        <el-popconfirm :title="deleteConfirmTitle" icon-color="#F56C6C" @confirm="confirmDelete(scope.row)">
                            <template #reference>
                                <el-button link type="danger" @click="clickDelete">{{ $t("common.delete") }}</el-button>
                            </template>
                            <template #actions="{ confirm, cancel }">
                                <el-button size="small" @click="cancel">{{ $t("common.no") }}</el-button>
                                <el-button
                                    type="danger"
                                    size="small"
                                    @click="confirm"
                                >
                                    {{ $t("common.yes") }}
                                </el-button>
                            </template>
                        </el-popconfirm>
                    </template>
                </el-table-column>
            </el-table>
            <div class="userManage-pagination-div">
                <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
            </div>
        </el-card>
        <el-drawer v-model="isDrawerOpen" @close="drawerClose" ref="drawer">
            <template #header>
                <span class="UserManage-drawer-title">{{ $t("static.editAndAddUser") }}</span>
            </template>
            <h1>{{ $t("sign.username") }}</h1>
            <el-input v-model="usernameInput" :disabled="usernameDisabled" clearable></el-input>
            <div class="UserManage-drawer-button-div">
                <el-button v-if="usernameDisabled" @click="clickEditUsername" link type="danger" class="UserManage-drawer-button">{{ $t("manage.editForced") }}</el-button>
                <el-button v-if="!usernameDisabled" @click="clickEditUsernameSubmit" link type="success" class="UserManage-drawer-button-submit">{{ $t("common.submit") }}</el-button>
                <el-button v-if="!usernameDisabled" @click="clickEditUsernameCancel" link class="UserManage-drawer-button-submit">{{ $t("common.cancel") }}</el-button>
            </div>
            <h1>{{ $t("sign.password") }}</h1>
            <el-input v-model="passwordInput" :disabled="passwordDisabled" type="password" show-password clearable></el-input>
            <div class="UserManage-drawer-button-div">
                <el-button v-if="passwordDisabled" @click="clickEditPassword" link type="danger" class="UserManage-drawer-button">{{ $t("manage.editForced") }}</el-button>
                <el-button v-if="!passwordDisabled" @click="clickEditPasswordSubmit" link type="success" class="UserManage-drawer-button-submit">{{ $t("common.submit") }}</el-button>
                <el-button v-if="!passwordDisabled" @click="clickEditPasswordCancel" link class="UserManage-drawer-button-submit">{{ $t("common.cancel") }}</el-button>
            </div>
        </el-drawer>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted } from 'vue'
import { getUserMessageList,updateUsernameByUuid,updatePasswordByUuid } from '@/axios/api/user'
import { getStatusColor } from '@/tools/tool'
import CryptoJS from 'crypto-js' //SHA-256加密
import { ElMessage } from 'element-plus' //element消息
import i18n from '@/language';
const { t } = i18n.global

const tableData = ref([]) //主页面表表格数据
const isDrawerOpen = ref(false) //EDIT的抽屉是否打开
const usernameDisabled = ref(true) //用户名输入框是否被禁用
const passwordDisabled = ref(true) //密码输入框是否被禁用
const usernameInput = ref("") //用户名输入框内容
const passwordInput = ref("") //密码输入框内容
const editUsernameNow = ref("") //当前正在编辑的用户名初始值
const editUserUuid = ref("") //当前正在编辑的用户的uuid
const deleteConfirmTitle = ref(t("static.deleteConfirmTitle")) //删除确认框的标题文字
const tableHeight = ref((window.innerHeight - 240) + "px") //表格高度
const page = ref(1) //页数
const pageTotal = ref(0) //总条数

onMounted( () =>
{
    loadTableData()
})

const loadTableData = async () => //加载列表数据
{
    try
    {
        const params =
        {
            page: page.value,
        }
        const resp = await getUserMessageList(params);
        pageTotal.value = resp.data.total
        tableData.value = resp.data.userList
    } catch {}
}

const pageChange = () => //翻页
{
    loadTableData()
}

const clickEdit = (row :any) => //点击编辑
{
    console.log(row)
    isDrawerOpen.value = true
    editUserUuid.value = row.uuid
    editUsernameNow.value = row.username
    usernameInput.value = row.username
    passwordInput.value = "*****"
}

const clickDelete = () => //点击删除按钮
{
    deleteConfirmTitle.value = t("static.deleteConfirmTitle")
}

const confirmDelete = (row :any) => //点击确认删除
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

const clickEditUsernameSubmit = async () => //提交对用户名的强制更改
{
    try
    {
        const params =
        {
            uuid: editUserUuid.value,
            username: usernameInput.value,
        }
        const resp = await updateUsernameByUuid(params)
        if(resp.data.code == 200)
        {
            ElMessage({
                message: t("common.success"),
                type: 'success',
            })
        }
        else if(resp.data.code == 400)
        {
            ElMessage({
                message: t("common.fail"),
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
        loadTableData()
        isDrawerOpen.value = false
    } catch {}
}

const clickEditPasswordSubmit = async () => //提交对密码的强制更改
{
    try
    {
        let passwordHash = CryptoJS.HmacSHA256(passwordInput.value,"SRIC") //使用SHA-256进行哈希运算
        let passwordHashString = CryptoJS.enc.Hex.stringify(passwordHash) //将哈希运算的结果进行16进制编码
        const params = 
        {
            uuid: editUserUuid.value,
            password: passwordHashString
        }
        const resp = await updatePasswordByUuid(params)
        if(resp.data.code == 200)
        {
            ElMessage({
                message: t("common.success"),
                type: 'success',
            })
        }
        else if(resp.data.code == 400)
        {
            ElMessage({
                message: t("common.fail"),
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
        loadTableData()
        isDrawerOpen.value = false
    } catch {}
}

const clickEditUsernameCancel = () => //取消强制更改用户名
{
    usernameInput.value = editUsernameNow.value
    usernameDisabled.value = true
}

const clickEditPasswordCancel = () => //取消强制更改密码
{
    passwordInput.value = "*****"
    passwordDisabled.value = true
}

const onWindowSizeChanged = () => //窗口大小变动
{
    tableHeight.value = (window.innerHeight - 240) + "px"
}

window.addEventListener('resize',onWindowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

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

.UserManage-drawer-button-submit
{
    margin-top: 10px;
    font-size: 15px;
}

.UserManage-drawer-title
{
    font-weight: bold;
}

.userManage-pagination-div
{
    margin-top: 20px;
}
</style>
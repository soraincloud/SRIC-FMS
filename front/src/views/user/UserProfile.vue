<template>
    <div class="user-profile-body-div">
        <el-avatar :src="avatarUrl" :size="100"></el-avatar>
        <div class="user-profile-details-div">
            <span class="user-profile-details-username">{{ username }}</span>
            <span class="user-profile-details-uid">UID : {{ userUid }}</span>
        </div>
    </div>
    <div class="user-profile-details-mark">
        <span>{{ mark }}</span>
    </div>
    <el-divider></el-divider>
</template>

<script lang="ts" setup>
import axios from 'axios';
import { ref } from 'vue'
import { getUserMessage } from '@/axios/api/user'
import { ElNotification } from 'element-plus'
import { h } from 'vue'
import i18n from '@/language';

const { t } = i18n.global

const avatarUrl = ref(axios.defaults.baseURL + "/userAvatar/NULL.webp") //头像URL
const username = ref("NULL") //用户名显示
const userUid = ref("0") //用户UID
const mark = ref("NULL MARK") //

const checkUserMessage = async () => //更新用户信息(用户名，头像)
{
  const resp = await getUserMessage({ uuid: localStorage.getItem("uuid") })
  username.value = resp.data.username
  userUid.value = resp.data.uid
  avatarUrl.value = axios.defaults.baseURL + "/userAvatar/" + resp.data.avatar
  mark.value = resp.data.mark
  if(resp.data.signCode == 500) //token过期
  {
    ElNotification({
      title: t("common.noties"),
      message: h('i', { style: 'color: teal' }, t("sign.tokenTimeOut")),
      
    })
    localStorage.setItem("isSignIn","false")
    localStorage.removeItem("token")
    localStorage.removeItem("uuid")
    localStorage.removeItem("uid")
  }
}

checkUserMessage()
</script>

<style>
@import '@/css/common.css';

.user-profile-body-div
{
    display: flex;
    align-items: flex-end;
    margin-left: 20px;
}

.user-profile-details-div
{
    display: flex;
    flex-direction: column;
    margin-left: 20px; /* 调整此值以控制文本与头像之间的距离 */
}

.user-profile-details-username
{
    font-weight: bold;
    font-size: 30px;
}

.user-profile-details-uid
{
    font-weight: bold;
}

.user-profile-details-mark
{
    margin-top: 20px;
    margin-left: 10px;
}
</style>

<template>
    <div class="user-profile-body-div">
        <el-avatar :src="avatarUrl" :size="100"></el-avatar>
        <div class="user-profile-details-div">
            <span class="user-profile-details-username">{{ username }}</span>
            <span class="user-profile-details-uid">UID : {{ userUid }}</span>
        </div>
    </div>
    <el-divider></el-divider>
</template>

<script lang="ts" setup>
import axios from 'axios';
import { ref } from 'vue'

const avatarUrl = ref(axios.defaults.baseURL + "/userAvatar/NULL.webp") //头像URL
const username = ref("NULL") //用户名显示
const userUid = ref("0") //用户UID
</script>

<style scoped>
.user-profile-body-div
{
    display: flex;
    align-items: center;
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

}
</style>

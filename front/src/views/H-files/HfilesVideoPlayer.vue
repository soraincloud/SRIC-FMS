<template>
    <el-container>
        <el-aside width="200px"></el-aside>
        <el-main>
            <div id="dplayer"></div>
        </el-main>
    </el-container>
</template>

<script lang="ts" setup>
import axios from 'axios';
import DPlayer from 'dplayer';
import { onMounted } from 'vue';
import { useRoute } from 'vue-router'

const route = useRoute()

let dp:any;
const videoUrl = axios.defaults.baseURL + "/h/playHVideo?video=" + route.query.video
console.log(videoUrl)

const initPlayer = () =>
{
    dp = new DPlayer
    ({
        container: document.getElementById('dplayer'),
        video: 
        {
            url: videoUrl,
        },
    });
}

onMounted(() => 
{
    initPlayer()
})
</script>
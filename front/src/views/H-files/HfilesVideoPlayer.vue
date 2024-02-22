<template>
    <el-row>
        <el-col :span="1"></el-col>
        <el-col :span="22">
            <el-container>
                <el-header>
                    <span class="HfilesVideoPlayer-header-name">{{ videoData.name }}</span>
                </el-header>
                <el-container>
                    <el-aside width="200px">
                        <p class="HfilesVideoPlayer-title">番号:</p>
                        <p class="HfilesVideoPlayer-text">{{ videoData.number }}</p>
                        <p class="HfilesVideoPlayer-title">文件名称:</p>
                        <p class="HfilesVideoPlayer-text">{{ videoData.filename }}</p>
                        <p class="HfilesVideoPlayer-title">类别:</p>
                        <el-tag
                        class="HfilesVideoPlayer-category-tag"
                        effect="plain"
                        :type="videoData.mosaicType"
                        >
                        <span class="HfilesVideo-card-tag-text">{{ videoData.mosaicText }}</span>
                        </el-tag>
                        <el-tag
                        class="HfilesVideoPlayer-category-tag"
                        effect="plain"
                        :type="videoData.categoryType"
                        round
                        >
                        <span class="HfilesVideo-card-tag-text">{{ videoData.categoryText }}</span>
                        </el-tag>
                        <p class="HfilesVideoPlayer-title">TAGS:</p>
                        <el-tag
                        v-for="(item,i) in videoData.hvideoTagList"
                        :key="i"
                        class="HfilesVideoPlayer-tag"
                        effect="dark"
                        type="info"
                        size="small"
                        >
                            <span class="HfilesVideo-card-tag-text">{{ item.tag }}</span>
                        </el-tag>
                    </el-aside>
                    <el-main>
                        <div id="dplayer"></div>
                    </el-main>
                </el-container>
            </el-container>
        </el-col>
        <el-col :span="1"></el-col>
    </el-row>
</template>

<script lang="ts" setup>
import axios from 'axios';
import DPlayer from 'dplayer';
import { onMounted,ref } from 'vue';
import { useRoute } from 'vue-router'
import { getHVideoById } from "@/axios/api/hVideo"

const route = useRoute()

let dp:any;
const videoUrl = axios.defaults.baseURL + "/h/playHVideo?video=" + route.query.video //设置播放视频所需url
let videoData:any = ref({})

const initPlayer = () =>
{
    dp = new DPlayer
    ({
        container: document.getElementById('dplayer'),
        autoplay: true,//自动播放
        video: 
        {
            url: videoUrl,
        },
    });
}

onMounted(async () => 
{
    initPlayer()
    const resp = await getHVideoById({id:route.query.video})
    videoData.value = resp.data
    if(videoData.value.mosaic == 1)
    {
        videoData.value.mosaicType = "success"
        videoData.value.mosaicText = "无修正"
    }
    else if(videoData.value.mosaic == 2)
    {
        videoData.value.mosaicType = "info"
        videoData.value.mosaicText = "有修正"
    }
    else
    {
        videoData.value.mosaicType = "info"
        videoData.value.mosaicText = "修正类别错误"
    }

    if(videoData.value.category == 1)
    {
        videoData.value.categoryType = "danger"
        videoData.value.categoryText = "REAL"
    }
    else if(videoData.value.category == 2)
    {
        videoData.value.categoryType = "primary"
        videoData.value.categoryText = "3D MMD"
    }
    else if(videoData.value.category == 3)
    {
        videoData.value.categoryType = "warning"
        videoData.value.categoryText = "2D"
    }
})
</script>

<style>
.HfilesVideoPlayer-header-name
{
    margin-left: 50px;
    font-weight: bold;
    font-size: 40px;
}

.HfilesVideoPlayer-title
{
    margin: 20px 0px 0px 0px;
    font-size: 12px;
}

.HfilesVideoPlayer-text
{
    margin: 0px 0px 20px 10px;
    font-weight: bold;
    font-size: 20px;
}

.HfilesVideoPlayer-category-tag
{
    margin: 10px 0px 0px 10px;
}

.HfilesVideoPlayer-tag
{
    margin: 10px 0px 0px 10px;
}
</style>
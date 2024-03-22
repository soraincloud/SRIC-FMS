<template>
    <div class="common-body-set-width">
        <el-container>
            <el-header>
                <span class="HfilesVideoPlayer-header-name">{{ videoData.name }}</span>
            </el-header>
            <el-container>
                <el-aside :width="asideWidth">
                    <div>
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
                            <span class="HfilesVideo-card-tag-text">{{ item.name }}</span>
                        </el-tag>
                        <p class="HfilesVideoPlayer-title">操作:</p>
                        <el-select class="HfilesVideoPlayer-add-select" v-model="addSelectValue" @change="addSelectValueChange" size="small">
                            <el-option
                            v-for="(item,i) in videoTagData"
                            :key="i"
                            :value="item.id"
                            :label="item.name"
                            ></el-option>
                        </el-select>
                        <el-popconfirm title="确定添加?" @confirm="addButtonConfirm">
                            <template #reference>
                                <el-button class="HfilesVideoPlayer-add-button" size="small" type="primary" :disabled="addButtonDisabled" plain>
                                    <el-icon><Plus /></el-icon>
                                    <span class="HfilesVideoPlayer-add-button-text">添加此 tag</span>
                                </el-button>
                            </template>
                        </el-popconfirm>
                    </div>
                </el-aside>
                <el-main>
                    <div id="dplayer"></div>
                </el-main>
            </el-container>
        </el-container>
        <div v-if="isMobile"> <!-- 一个重复的信息菜单 用于在页面过于狭窄时使用 -->
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
                <span class="HfilesVideo-card-tag-text">{{ item.name }}</span>
            </el-tag>
            <p class="HfilesVideoPlayer-title">操作:</p>
            <el-select class="HfilesVideoPlayer-add-select" v-model="addSelectValue" @change="addSelectValueChange" size="small">
                <el-option
                v-for="(item,i) in videoTagData"
                :key="i"
                :value="item.id"
                :label="item.name"
                ></el-option>
            </el-select>
            <el-popconfirm title="确定添加?" @confirm="addButtonConfirm">
                <template #reference>
                    <el-button class="HfilesVideoPlayer-add-button" size="small" type="primary" :disabled="addButtonDisabled" plain>
                        <el-icon><Plus /></el-icon>
                        <span class="HfilesVideoPlayer-add-button-text">添加此 tag</span>
                    </el-button>
                </template>
            </el-popconfirm>
        </div>
    </div>
</template>

<script lang="ts" setup>
import axios from 'axios';
import DPlayer from 'dplayer';
import { onMounted,ref } from 'vue';
import { useRoute } from 'vue-router'
import { ElMessage } from 'element-plus'
import { getHVideoById,getHVideoTagList,addHVideoTag } from "@/axios/api/hVideo"

const route = useRoute()

let dp:any;
const videoUrl = axios.defaults.baseURL + "/h/playHVideo?video=" + route.query.video //设置播放视频所需url
let videoData:any = ref({})
let videoTagData:any = ref({})
let addButtonDisabled:any = ref(true) //添加按钮是否禁用
let addSelectValue:any = ref() //选择栏值
let asideWidth:any = ref("200px") //左侧显示信息栏的宽度
let isMobile:any = ref(false) //窗口是否过小（移动端视角）

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

const getHVideoData = async () =>
{
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
    else
    {
        videoData.value.mosaicType = "info"
        videoData.value.mosaicText = "分类类别错误"
    }
}

const getHVideoTagData = async () =>
{
    const resp = await getHVideoTagList({})
    videoTagData.value = resp.data
}

const submitHVideoTag = async () =>
{
    const params = 
    {
        videoId: videoData.value.id,
        tagId: addSelectValue.value
    }
    const resp = await addHVideoTag(params)
    if(resp.data.code == 200)
    {
        ElMessage({
            message: '添加成功',
            type: 'success',
        })
    }
    else if(resp.data.code == 201)
    {
        ElMessage({
            message: '已有此tag',
            type: 'warning',
        })
    }
    else
    {
        ElMessage({
            message: '参数异常',
            type: 'error',
        })
    }
    addSelectValue.value = ""
    addButtonDisabled.value = true
    getHVideoData()
}

onMounted(async () => 
{
    initPlayer()
    getHVideoData()
    getHVideoTagData()
})

const addSelectValueChange = () => //tag选项改变 启用添加按钮
{
    addButtonDisabled.value = false
}

const addButtonConfirm = () => //确定添加tag
{
    submitHVideoTag()
}

const windowSizeChanged = () => //窗口大小改变
{
    if(window.innerWidth < 800) //在窗口过小时折叠菜单栏
    {
        isMobile.value = true
        asideWidth.value = "0px"
    }
    else
    {
        isMobile.value = false
        asideWidth.value = "200px"
    }
}

windowSizeChanged()

window.addEventListener('resize',windowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

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
    font-weight: bold;
}

.HfilesVideoPlayer-tag
{
    margin: 10px 0px 0px 10px;
    font-weight: bold;
}

.HfilesVideoPlayer-add-select
{
    margin-top: 10px;
}

.HfilesVideoPlayer-add-button
{
    margin-top: 10px;
}

.HfilesVideoPlayer-add-button-text
{
    font-weight: bold;
}
</style>
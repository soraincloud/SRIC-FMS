<template>
    <div class="common-body-set-width">
        <el-container>
            <el-header>
                <span class="HfilesComicReader-header-name">{{ comicData.name }}</span>
            </el-header>
            <el-container>
                <el-aside width="200px">
                    <p class="HfilesComicReader-title">文件名称:</p>
                    <p class="HfilesComicReader-text">{{ comicData.filename }}</p>
                    <p class="HfilesComicReader-title">类别:</p>
                    <el-tag
                    class="HfilesComicReader-category-tag"
                    effect="plain"
                    :type="comicData.mosaicType"
                    >
                    <span class="HfilesVideo-card-tag-text">{{ comicData.mosaicText }}</span>
                    </el-tag>
                    <el-tag
                    class="HfilesComicReader-category-tag"
                    effect="plain"
                    :type="comicData.categoryType"
                    round
                    >
                    <span class="HfilesVideo-card-tag-text">{{ comicData.categoryText }}</span>
                    </el-tag>
                    <p class="HfilesComicReader-title">TAGS:</p>
                    <el-tag
                    v-for="(item,i) in comicData.hcomicTagList"
                    :key="i"
                    class="HfilesComicReader-tag"
                    effect="dark"
                    type="info"
                    size="small"
                    >
                        <span class="HfilesVideo-card-tag-text">{{ item.name }}</span>
                    </el-tag>
                </el-aside>
                <el-main>
                    <el-scrollbar :height="scrollbarHeight">
                        <div class="HfilesComicReader-comic-card-body">
                            <el-card
                            v-for="(item,i) in pageData"
                            class="HfilesComicReader-comic-card"
                            >
                            <el-image :src="item" lazy></el-image>
                            </el-card>
                        </div>
                    </el-scrollbar>
                </el-main>
            </el-container>
        </el-container>
    </div>
</template>

<script lang="ts" setup>
import axios from 'axios';
import { onMounted,ref } from 'vue';
import { useRoute } from 'vue-router'
import { getHComicById } from "@/axios/api/hComic"

const route = useRoute()

let comicData:any = ref({})
let pageData:any = ref([])
let scrollbarHeight = ref((window.innerHeight - 205) + "px") //设置滚动条高度

const getHComicData = async () => 
{
    const resp = await getHComicById({id:route.query.comic})
    comicData.value = resp.data.hcomic
    if(comicData.value.mosaic == 1)
    {
        comicData.value.mosaicType = "success"
        comicData.value.mosaicText = "无修正"
    }
    else if(comicData.value.mosaic == 2)
    {
        comicData.value.mosaicType = "info"
        comicData.value.mosaicText = "有修正"
    }
    else
    {
        comicData.value.mosaicType = "info"
        comicData.value.mosaicText = "修正类别错误"
    }

    if(comicData.value.category == 1)
    {
        comicData.value.categoryType = "danger"
        comicData.value.categoryText = "短篇"
    }
    else if(comicData.value.category == 2)
    {
        comicData.value.categoryType = "primary"
        comicData.value.categoryText = "单本"
    }
    else
    {
        comicData.value.mosaicType = "info"
        comicData.value.mosaicText = "分类类别错误"
    }
    pageData.value = resp.data.hcomicPages
    pageData.value.forEach((element:any,index:any) => 
    {
        pageData.value[index] = axios.defaults.baseURL + element
    });
}

onMounted(async () => 
{
    getHComicData()
})

const resetScrollbarHeight = () => //重置滚动条高度(适应窗口大小)
{
    scrollbarHeight.value = (window.innerHeight - 205) + "px"
}

window.addEventListener('resize',resetScrollbarHeight) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.HfilesComicReader-header-name
{
    margin-left: 50px;
    font-weight: bold;
    font-size: 40px;
}

.HfilesComicReader-title
{
    margin: 20px 0px 0px 0px;
    font-size: 12px;
}

.HfilesComicReader-text
{
    margin: 0px 0px 20px 10px;
    font-weight: bold;
    font-size: 20px;
}

.HfilesComicReader-category-tag
{
    margin: 10px 0px 0px 10px;
    font-weight: bold;
}

.HfilesComicReader-tag
{
    margin: 10px 0px 0px 10px;
    font-weight: bold;
}

.HfilesComicReader-comic-card-body .el-card__body
{
    padding: 0px;
}

.HfilesComicReader-comic-card
{
    margin-top: 5px;
}
</style>
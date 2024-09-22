<template>
    <el-button v-if="!isEdit" type="info" class="library-read-back-button" @click="clickBack" plain>
        <el-icon size="20">
            <Back/>
        </el-icon>
        <p class="library-read-back-button-text">{{ $t("common.back") }}</p>
    </el-button>
    <div class="common-body-set-width">
        <div class="library-read-tags-div">
            <span class="library-card-name-text">{{ libraryData.title }}</span>
            <div class="library-card-tags-div">
                <el-tag
                class="library-card-tags"
                effect="dark"
                type="warning"
                size="small"
                >
                <span class="library-card-tag-text">{{ libraryData.categoryName }}</span>
                </el-tag>
            </div>
        </div>
        <el-scrollbar :height="scrollbarHeight">
            <el-card v-if="!isEdit" class="library-read-text-area-card">
                <div v-html="libraryDataMarkDown" class="markdown-body"></div>
            </el-card>
            <el-input v-if="isEdit" class="library-read-text-area-card" v-model="libraryEditData" type="textarea" :autosize="{ minRows: 10 }"></el-input>
        </el-scrollbar>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted,computed } from 'vue'
import { getLibraryById } from '@/axios/api/library';
import { useRoute,useRouter } from 'vue-router'
import { marked } from 'marked'
import 'github-markdown-css/github-markdown.css'

const route = useRoute()
const router = useRouter()

const libraryData:any = ref({}) //library 数据
const libraryDataText:any = ref("") //library 内容数据
const scrollbarHeight = ref((window.innerHeight - 225) + "px") //设置滚动条高度
const isEdit = ref(false) //是否处于编辑模式
const libraryEditData:any = ref("") //编辑 library 内容数据

const getLibraryData = async () => //获取 library 数据与内容数据
{
    const resp = await getLibraryById({id:route.query.library})
    libraryData.value = resp.data.library
    libraryDataText.value = resp.data.libraryDataText
}

const libraryDataMarkDown = computed(() => marked(libraryDataText.value)) //将 library 内容数据 (String) 渲染为 markdown

onMounted(async () => 
{
    await getLibraryData()
    if(route.query.add == "true")
    {
        libraryEditData.value = libraryDataText.value
        isEdit.value = true
    }
})

const clickBack = () => //点击返回
{
    router.push
    ({
        name: 'Library',
        path: '/Library',
    })
}

const windowSizeChanged = () => //窗口变动
{
    scrollbarHeight.value = (window.innerHeight - 225) + "px"
}

window.addEventListener('resize',windowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';
@import 'github-markdown-css/github-markdown.css';

.markdown-body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    padding: 20px;

    background: #ffffff;
    color: #1e1e1e;
}

html.dark .markdown-body
{
    background: #1e1e1e;
    color: #dcdcdc;
}

.library-read-back-button
{
    margin-bottom: 10px;
}

.library-read-back-button-text
{
    margin-left: 5px;
}

.library-read-header
{
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    margin-bottom: 10px;
}

.library-read-name-text
{
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.library-read-tags-div
{
    margin-bottom: 5px;
}

.library-read-tags
{
    margin: 0px 0px 2px 10px;
}

.library-read-tag-text
{
    font-weight: bold;
}

.library-read-text-area-card
{
    margin-top: 10px;
}

.library-reader-text-area-card .el-card__body
{
    padding: 0;
}

.library-card-name-text
{
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.library-card-tags-div
{
    margin: 10px 0px 0px 0px;
}

.library-card-tag-text
{
    font-weight: bold;
}

.library-card-tags
{
    margin: 0px 0px 2px 0px;
}
</style>@/axios/api/library
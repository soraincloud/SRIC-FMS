<template>
    <el-button type="info" class="notes-read-back-button" @click="clickBack" plain>
        <el-icon size="20">
            <Back/>
        </el-icon>
        <p class="notes-read-back-button-text">{{ $t("common.back") }}</p>
    </el-button>
    <div class="common-body-set-width">
        <div class="notes-read-header">
            <span class="notes-read-name-text">{{ notesData.title }}</span>
            <el-button type="danger" round>
                <el-icon size="20">
                    <Edit/>
                </el-icon>
            </el-button>
        </div>
        <div class="notes-read-tags-div">
            <span>{{ notesData.filename }}</span>
            <el-tag
            class="notes-read-tags"
            effect="dark"
            type="warning"
            size="small"
            >
            <span class="notes-read-tag-text">{{ notesData.categoryName }}</span>
            </el-tag>
        </div>
        <el-scrollbar :height="scrollbarHeight">
            <el-card class="notes-reader-text-area-card">
                <div v-html="notesDataMarkDown" class="markdown-body"></div>
            </el-card>
        </el-scrollbar>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted,computed } from 'vue'
import { getNotesById } from '@/axios/api/notes';
import { useRoute,useRouter } from 'vue-router'
import { marked } from 'marked'
import 'github-markdown-css/github-markdown.css'

const route = useRoute()
const router = useRouter()

const notesData:any = ref({}) //notes 数据
const notesDataText:any = ref("") //notes 内容数据
const scrollbarHeight = ref((window.innerHeight - 225) + "px") //设置滚动条高度

const getNotesData = async () => //获取 notes 数据与内容数据
{
    const resp = await getNotesById({id:route.query.notes})
    notesData.value = resp.data.notes
    notesDataText.value = resp.data.notesDataText
}

const notesDataMarkDown = computed(() => marked(notesDataText.value)) //将 notes 内容数据 (String) 渲染为 markdown

onMounted(async () => 
{
    await getNotesData()
})

const clickBack = () => //点击返回
{
    router.push
    ({
        name: 'Notes',
        path: '/Notes',
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

.notes-read-back-button
{
    margin-bottom: 10px;
}

.notes-read-back-button-text
{
    margin-left: 5px;
}

.notes-read-header
{
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    margin-bottom: 10px;
}

.notes-read-name-text
{
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.notes-read-tags-div
{
    margin-bottom: 5px;
}

.notes-read-tags
{
    margin: 0px 0px 2px 10px;
}

.notes-read-tag-text
{
    font-weight: bold;
}

.notes-reader-text-area-card
{
    margin-top: 10px;
}

.notes-reader-text-area-card .el-card__body
{
    padding: 0;
}
</style>
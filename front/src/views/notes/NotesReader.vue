<template>
    <el-button v-if="!isEdit" type="info" class="notes-read-back-button" @click="clickBack" plain>
        <el-icon size="20">
            <Back/>
        </el-icon>
        <p class="notes-read-back-button-text">{{ $t("common.back") }}</p>
    </el-button>
    <div class="common-body-set-width">
        <div class="notes-read-header">
            <span class="notes-read-name-text">{{ notesData.title }}</span>
            <div>
                <el-button v-if="!isEdit" type="danger" @click="clickEdit" round>
                    <el-icon size="20">
                        <Edit/>
                    </el-icon>
                </el-button>

                <el-popconfirm v-if="isEdit" :title="cancelConfirmTitle" icon-color="#F56C6C" @confirm="confirmCancel">
                    <template #reference>
                        <el-button type="info" @click="clickCancel" round>
                            <el-icon size="20">
                                <RefreshLeft/>
                            </el-icon>
                        </el-button>
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

                <el-tooltip v-if="isEdit" placement="bottom" effect="dark">
                    <template #content>
                        <span>{{ $t("common.save") }}</span>
                    </template>
                    <el-button type="success" @click="clickEdit" round>
                        <el-icon size="20">
                            <MessageBox/>
                        </el-icon>
                    </el-button>
                </el-tooltip>
            </div>
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
            <el-card v-if="!isEdit" class="notes-read-text-area-card">
                <div v-html="notesDataMarkDown" class="markdown-body"></div>
            </el-card>
            <el-input v-if="isEdit" class="notes-read-text-area-card" v-model="notesEditData" type="textarea" :autosize="{ minRows: 10 }"></el-input>
        </el-scrollbar>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted,computed } from 'vue'
import { getNotesById } from '@/axios/api/notes';
import { useRoute,useRouter } from 'vue-router'
import { marked } from 'marked'
import 'github-markdown-css/github-markdown.css'
import i18n from '@/language';
const { t } = i18n.global

const route = useRoute()
const router = useRouter()

const notesData:any = ref({}) //notes 数据
const notesDataText:any = ref("") //notes 内容数据
const scrollbarHeight = ref((window.innerHeight - 225) + "px") //设置滚动条高度
const isEdit = ref(false) //是否处于编辑模式
const notesEditData:any = ref("") //编辑 notes 内容数据
const cancelConfirmTitle = ref(t("static.cancelConfirmTitle")) //取消编辑确认框文字标题
const saveConfirmTitle = ref(t("static.saveConfirmTitle")) //保存编辑内容确认框文字标题

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

const clickEdit = () => //点击编辑按钮
{
    notesEditData.value = notesDataText.value
    isEdit.value = true
}

const clickCancel = () => //点击取消编辑按钮
{
    
}

const confirmCancel = () => //确定取消编辑
{
    isEdit.value = false
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

.notes-read-text-area-card
{
    margin-top: 10px;
}

.notes-reader-text-area-card .el-card__body
{
    padding: 0;
}
</style>
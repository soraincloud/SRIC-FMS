<template>
    <el-button v-if="!isEdit" type="info" class="library-read-back-button" @click="clickBack" plain>
        <el-icon size="20">
            <Back/>
        </el-icon>
        <p class="library-read-back-button-text">{{ $t("common.back") }}</p>
    </el-button>
    <div class="common-body-set-width">
        <div class="library-read-header">
            <span class="library-read-name-text">{{ libraryData.title }}</span>
            <div>
                <el-button v-if="!isEdit" type="danger" @click="clickEdit" round>
                    <el-icon size="20">
                        <Edit/>
                    </el-icon>
                </el-button>

                <el-popconfirm v-if="isEdit" :title="cancelConfirmTitle" icon-color="#F56C6C" @confirm="confirmCancel">
                    <template #reference>
                        <el-button type="info" round>
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

                <el-popconfirm v-if="isEdit" :title="saveConfirmTitle" icon-color="#67C23A" @confirm="confirmEdit">
                    <template #reference>
                        <el-button type="success" round>
                            <el-icon size="20">
                                <MessageBox/>
                            </el-icon>
                        </el-button>
                    </template>
                    <template #actions="{ confirm, cancel }">
                        <el-button size="small" @click="cancel">{{ $t("common.no") }}</el-button>
                        <el-button
                            type="success"
                            size="small"
                            @click="confirm"
                        >
                            {{ $t("common.yes") }}
                        </el-button>
                    </template>
                </el-popconfirm>
            </div>
        </div>
        <div class="library-read-tags-div">
            <span>{{ libraryData.filename }}</span>
            <el-tag
            class="library-read-tags"
            effect="dark"
            type="warning"
            size="small"
            >
                <span class="library-read-tag-text">{{ libraryData.categoryName }}</span>
            </el-tag>
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
import { getLibraryById,editLibraryData } from '@/axios/api/library';
import { useRoute,useRouter } from 'vue-router'
import { marked } from 'marked'
import { ElMessage } from 'element-plus' //element消息
import 'github-markdown-css/github-markdown.css'
import i18n from '@/language';
const { t } = i18n.global

const route = useRoute()
const router = useRouter()

const libraryData:any = ref({}) //library 数据
const libraryDataText:any = ref("") //library 内容数据
const scrollbarHeight = ref((window.innerHeight - 265) + "px") //设置滚动条高度
const isEdit = ref(false) //是否处于编辑模式
const libraryEditData:any = ref("") //编辑 library 内容数据
const cancelConfirmTitle = ref(t("static.cancelConfirmTitle")) //取消编辑确认框文字标题
const saveConfirmTitle = ref(t("static.saveConfirmTitle")) //保存编辑内容确认框文字标题

const getLibraryData = async () => //获取 library 数据与内容数据
{
    try
    {
        const resp = await getLibraryById({id:route.query.library})
        libraryData.value = resp.data.library
        libraryDataText.value = resp.data.libraryDataText
    } catch {}
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
        name: 'LibraryManage',
        path: '/LibraryManage',
    })
}

const clickEdit = () => //点击编辑按钮
{
    libraryEditData.value = libraryDataText.value
    isEdit.value = true
}

const confirmCancel = () => //确定取消编辑
{
    isEdit.value = false
}

const confirmEdit = async () => //确定保存编辑
{
    try
    {
        const params = 
        {
            id: libraryData.value.id,
            filename: libraryData.value.filename,
            content: libraryEditData.value,
        }
        const resp = await editLibraryData(params)
        if(resp.data.code == 200)
        {
            ElMessage({
                message: t("static.saveSuccess"),
                type: 'success',
            })
        }
        else if(resp.data.code == 400)
        {
            ElMessage({
                message: t("static.saveFailed"),
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
        await getLibraryData()
        isEdit.value = false
    } catch {}
}

const windowSizeChanged = () => //窗口变动
{
    scrollbarHeight.value = (window.innerHeight - 265) + "px"
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
</style>@/axios/api/library
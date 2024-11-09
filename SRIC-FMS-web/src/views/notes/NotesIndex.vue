<template>
    <div class="common-body-set-width">
        <div class="notes-search-div">
            <el-row>
                <el-col :span="20">
                    <el-input
                    v-model="searchInput"
                    placeholder="search"
                    >
                    <template #append>
                        <el-button @click="clickSearch">
                            <el-icon>
                                <search/>
                            </el-icon>
                        </el-button>
                    </template>
                    </el-input>
                </el-col>
                <el-col :span="4">
                    <el-button @click="clickAddNote" class="notes-add-button" type="danger">
                        <el-icon size="15">
                            <Plus/>
                        </el-icon>
                    </el-button>
                </el-col>
            </el-row>
        </div>
        <el-card class="notes-timeline">
            <el-scrollbar :height="scrollbarHeight" ref="notesScrollBarRef">
                <el-timeline>
                    <el-timeline-item v-if="isNewNoteShow" center placement="top" :timestamp="newNoteTimeShow">
                        <el-card>
                            <el-input></el-input>
                        </el-card>
                    </el-timeline-item>
                    <el-timeline-item v-for="(item,i) in notesList" :key="i" center placement="top" :timestamp="item.createTime">
                        <el-card>
                            <span class="notes-card-title">{{ item.title }}</span>
                            <div class="notes-card-buttons-div">
                                <el-button text circle>
                                    <el-icon><Edit/></el-icon>
                                </el-button>
                                <el-button text circle @click="clickCopy(item.text)">
                                    <el-icon><CopyDocument/></el-icon>
                                </el-button>
                            </div>
                            <el-divider></el-divider>
                            <span class="notes-card-text-span">{{ item.text }}</span>
                        </el-card>
                    </el-timeline-item>
                </el-timeline>
            </el-scrollbar>
            <div class="notes-pagination-div">
                <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
            </div>
        </el-card>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted,h } from 'vue'
import { getDate } from '@/tools/tool'
import { getNotesListByUser } from '@/axios/api/notes';
import { ElMessage,ElNotification } from 'element-plus'
import i18n from '@/language';

const { t } = i18n.global

const searchInput = ref("") //搜索内容输入
const scrollbarHeight = ref((window.innerHeight - 230) + "px") //设置滚动条高度
const isNewNoteShow = ref(false) //新增笔记模块是否显示
const newNoteTimeShow = ref("") //新增笔记时显示的时间
const notesScrollBarRef = ref<HTMLElement | null>(null) //滚动条的ref 在onMounted后被赋值
const page = ref(1) //页数
const pageTotal = ref(0) //总条数

const notesList:any = ref([]) //notes数据列表

const getNotesListData = async () => //获取 notes 列表 (需登录)
{
    try
    {
        const params = 
    {
        searchInput: searchInput.value,
        page: page.value,
    }
        const resp = await getNotesListByUser(params)
        pageTotal.value = resp.data.total
        notesList.value = resp.data.notesList
    } catch {}
}

onMounted( () =>
{
    getNotesListData()
})

const clickSearch = () => //点击搜索
{
    getNotesListData()
}

const pageChange = () => //翻页
{
    getNotesListData()
}

const clickAddNote = () => //点击新增笔记
{
    newNoteTimeShow.value = getDate()
    isNewNoteShow.value = true
    notesScrollBarRef.value?.scrollTo({ top: 0, behavior: 'smooth' }) //将滚动条平滑滚动到顶部
}

const clickCopy = (text:any) =>
{
    if (navigator.clipboard)
    {
        navigator.clipboard.writeText(text).then(() => {
            ElMessage({
                message: t("static.copySuccess"),
                type: 'success',
            })
        }).catch(err => {
            ElMessage({
                message: t("static.copyError"),
                type: 'error',
            })
        })
    }
    else
    {
        ElMessage({
            message: t("static.copyError"),
            type: 'error',
        })
        ElNotification({
        title: t("common.noties"),
        message: h('i', { style: 'color: #F56C6C' }, t("static.copyNotCompatible")),
      })
    }
}

const resetMinHeightAndMenu = () =>
{
    resetScrollbarHeight()
}

const resetScrollbarHeight = () => //重置滚动条高度(适应窗口大小)
{
    scrollbarHeight.value = (window.innerHeight - 230) + "px"
}

resetMinHeightAndMenu()

window.addEventListener('resize',resetMinHeightAndMenu) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.notes-card-title
{
    white-space: normal; /* 允许自动换行 */
    word-break: break-all; /* 截断单词进行换行 */
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.notes-search-div
{
    margin-bottom: 10px;
}

.notes-add-button
{
    float: right;
}

.notes-timeline .el-timeline
{
    padding: 0px 20px 0px 20px;
}

.notes-timeline .el-divider--horizontal
{
    margin-top: 5px;
    margin-bottom: 10px;
}

.notes-pagination-div
{
    margin-top: 10px;
}

.notes-card-title
{
   font-weight: bold;
   font-size: 25px; 
}

.notes-card-buttons-div
{
    float: right;
}

.notes-card-text-span
{
    white-space: normal; /* 允许自动换行 */
    word-break: break-all; /* 截断单词进行换行 */
    font-size: 15px;
    font-weight: bold;
}
</style>
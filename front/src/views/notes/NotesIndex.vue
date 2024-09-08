<template>
    <div class="common-body-set-width">
        <el-container>
            <el-aside :width="asideWidth">
                <el-menu
                :style="minHeight"
                :default-active="deafultActiveMenu"
                :ellipsis="false"
                :collapse="isCollapse"
                @select="selectMenu"
                >
                    <el-menu-item index="0">
                        <el-icon :size="25"><Coin /></el-icon>
                        <template #title>
                            <span class="notes-category-item-span">{{ $t("common.all") }}</span>
                        </template>
                    </el-menu-item>
                    <el-menu-item v-for="(item,i) in notesCategory" :kay="i" :index="item.id">
                        <el-icon :size="25"><Menu /></el-icon>
                        <template #title>
                            <span class="notes-category-item-span">{{ item.name }}</span>
                        </template>
                    </el-menu-item>
                </el-menu>
            </el-aside>
            <el-main>
                <div>
                    <div class="notes-search-div">
                        <el-input
                        v-model="searchInput"
                        placeholder="搜索"
                        >
                        <template #append>
                            <el-button @click="clickSearch">
                                <el-icon>
                                    <search/>
                                </el-icon>
                            </el-button>
                        </template>
                        </el-input>
                    </div>
                    <el-scrollbar :height="scrollbarHeight">
                        <el-card
                            v-for="(item,i) in notesList"
                            :key="i"
                            @mouseover="mouseOver(i)"
                            @mouseleave="mouseLeave(i)"
                            @click="mouseClick(i)"
                            :style="item.background"
                            class="notes-card"
                            >
                            <div class="notes-card-content">
                                <div class="notes-card-details">
                                    <span class="notes-card-name-text">{{ item.title }}</span>
                                    <div class="notes-card-tags-div">
                                        <span>{{ item.filename }}</span>
                                        <el-tag
                                        class="notes-card-tags"
                                        effect="dark"
                                        type="warning"
                                        size="small"
                                        >
                                        <span class="notes-card-tag-text">{{ item.categoryName }}</span>
                                        </el-tag>
                                    </div>
                                </div>
                            </div>
                        </el-card>
                    </el-scrollbar>
                    <div class="notes-pagination-div">
                        <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
                    </div>
                </div>
            </el-main>
        </el-container>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted } from 'vue'
import { getNotesCategoryList,getNotesList } from '@/axios/api/notes';
import { useRouter } from "vue-router";

const router = useRouter()

const deafultActiveMenu = "0" //访问页面时默认菜单选项
const minHeight = ref("min-height:" + (window.innerHeight - 100) + "px;" )//设置菜单栏高度
const isCollapse = ref(false) //菜单是否折叠
const asideWidth = ref("200px") //侧边栏宽度

const notesCategory:any = ref([]) //notes 类别数据
const notesCategorySelected = ref("0") //当前选择的 notes 类别
const scrollbarHeight = ref((window.innerHeight - 225) + "px") //设置滚动条高度
const searchInput = ref() //搜索输入内容
const page = ref(1) //页数
const pageTotal = ref(0) //总条数
const notesList:any = ref([]) //notes 数据列表

const getNotesCategoryData = async () => //获取 notes 类别数据
{
    const resp = await getNotesCategoryList({})
    notesCategory.value = resp.data
}

const getNotesData = async () =>
{
    const requestData = 
    {
        searchInput: searchInput.value,
        category: notesCategorySelected.value,
        page: page.value,
    }
    const resp = await getNotesList(requestData)
    console.log(resp.data)
    pageTotal.value = resp.data.total
    notesList.value = resp.data.notesList
}

onMounted( () =>
{
    getNotesCategoryData()
    getNotesData()
})

const selectMenu = (key) => //类别菜单选择
{
    notesCategorySelected.value = key
    getNotesData()
}

const mouseOver = (i:any) => //鼠标移入
{
    notesList.value[i].background = "border-width: 5px;"
}

const mouseLeave = (i:any) => //鼠标移出
{
    notesList.value[i].background = ""
}

const mouseClick = (i:any) => //点击跳转
{
    router.push
    ({
        name: 'NotesReader',
        path: '/NotesReader',
        query:
        {
            notes: notesList.value[i].id
        },
    })
}

const clickSearch = () => //点击搜索
{
    getNotesData()
}

const pageChange = () => //翻页
{
    getNotesData()
}

const resetMinHeightAndMenu = () =>
{
    minHeight.value = "min-height:" + (window.innerHeight - 100) + "px;" //重置菜单栏高度(适应窗口大小)
    if(window.innerWidth < 800) //在窗口过小时折叠菜单栏
    {
        isCollapse.value = true
        asideWidth.value = "75px"
    }
    else
    {
        isCollapse.value = false
        asideWidth.value = "200px"
    }
    resetScrollbarHeight()
}

const resetScrollbarHeight = () => //重置滚动条高度(适应窗口大小)
{
    scrollbarHeight.value = (window.innerHeight - 225) + "px"
}

resetMinHeightAndMenu()

window.addEventListener('resize',resetMinHeightAndMenu) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.notes-category-item-span
{
    font-size: 20px;
    font-weight: bold;
}

.notes-search-div
{
    margin-bottom: 10px;
}

.notes-card
{
    border-color: #aaaaaa;
    margin-bottom: 10px;
}

.notes-card-content
{
    display: flex;
}

.notes-card-details
{
    margin-top: 10px;
}

.notes-card-name-text
{
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.notes-card-tags-div
{
    margin: 10px 0px 0px 0px;
}

.notes-card-tag-text
{
    font-weight: bold;
}

.notes-pagination-div
{
    margin-top: 10px;
}

.notes-card-tags
{
    margin: 0px 0px 2px 10px;
}
</style>
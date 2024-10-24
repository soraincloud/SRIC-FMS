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
                            <span class="library-category-item-span">{{ $t("common.all") }}</span>
                        </template>
                    </el-menu-item>
                    <el-menu-item v-for="(item,i) in libraryCategory" :key="i" :index="item.id.toString()">
                        <el-icon :size="25"><Menu /></el-icon>
                        <template #title>
                            <span class="library-category-item-span">{{ item.name }}</span>
                        </template>
                    </el-menu-item>
                </el-menu>
            </el-aside>
            <el-main>
                <div>
                    <div class="library-search-div">
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
                    </div>
                    <el-scrollbar :height="scrollbarHeight">
                        <el-card
                            v-for="(item,i) in libraryList"
                            :key="i"
                            @mouseover="mouseOver(i)"
                            @mouseleave="mouseLeave(i)"
                            @click="mouseClick(i)"
                            :style="item.background"
                            class="library-card"
                            >
                            <div class="library-card-content">
                                <div class="library-card-details">
                                    <span class="library-card-name-text">{{ item.title }}</span>
                                    <div class="library-card-tags-div">
                                        <el-tag
                                        class="library-card-tags"
                                        effect="dark"
                                        type="warning"
                                        size="small"
                                        >
                                        <span class="library-card-tag-text">{{ item.categoryName }}</span>
                                        </el-tag>
                                    </div>
                                </div>
                            </div>
                        </el-card>
                    </el-scrollbar>
                    <div class="library-pagination-div">
                        <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
                    </div>
                </div>
            </el-main>
        </el-container>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted } from 'vue'
import { getLibraryCategoryList,getLibraryList } from '@/axios/api/library';
import { useRouter } from "vue-router";

const router = useRouter()

const deafultActiveMenu = "0" //访问页面时默认菜单选项
const minHeight = ref("min-height:" + (window.innerHeight - 100) + "px;" )//设置菜单栏高度
const isCollapse = ref(false) //菜单是否折叠
const asideWidth = ref("200px") //侧边栏宽度

const libraryCategory:any = ref([]) //library 类别数据
const libraryCategorySelected = ref("0") //当前选择的 library 类别
const scrollbarHeight = ref((window.innerHeight - 225) + "px") //设置滚动条高度
const searchInput = ref() //搜索输入内容
const page = ref(1) //页数
const pageTotal = ref(0) //总条数
const libraryList:any = ref([]) //library 数据列表

const getLibraryCategoryData = async () => //获取 library 类别数据
{
    try
    {
        const resp = await getLibraryCategoryList({})
        libraryCategory.value = resp.data
    } catch {}
}

const getLibraryData = async () =>
{
    try
    {
        const params = 
        {
            searchInput: searchInput.value,
            category: libraryCategorySelected.value,
            page: page.value,
        }
        const resp = await getLibraryList(params)
        console.log(resp.data)
        pageTotal.value = resp.data.total
        libraryList.value = resp.data.libraryList
    } catch {}
}

onMounted( () =>
{
    getLibraryCategoryData()
    getLibraryData()
})

const selectMenu = (key) => //类别菜单选择
{
    libraryCategorySelected.value = key
    getLibraryData()
}

const mouseOver = (i:any) => //鼠标移入
{
    libraryList.value[i].background = "border-width: 5px;"
}

const mouseLeave = (i:any) => //鼠标移出
{
    libraryList.value[i].background = ""
}

const mouseClick = (i:any) => //点击跳转
{
    router.push
    ({
        name: 'LibraryReader',
        path: '/LibraryReader',
        query:
        {
            library: libraryList.value[i].id
        },
    })
}

const clickSearch = () => //点击搜索
{
    getLibraryData()
}

const pageChange = () => //翻页
{
    getLibraryData()
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

.library-category-item-span
{
    font-size: 20px;
    font-weight: bold;
}

.library-add-button
{
    float: right;
}

.library-search-div
{
    margin-bottom: 10px;
}

.library-card
{
    border-color: #aaaaaa;
    margin-bottom: 10px;
}

.library-card-content
{
    display: flex;
}

.library-card-details
{
    margin-top: 10px;
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

.library-pagination-div
{
    margin-top: 10px;
}

.library-card-tags
{
    margin: 0px 0px 2px 0px;
}

.library-drawer-title
{
    font-weight: bold;
}

.library-add-button-icon
{
    margin-right: 10px;
}
</style>@/axios/api/library
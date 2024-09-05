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
                        <el-icon :size="25"><Menu /></el-icon>
                        <template #title>
                            <span class="notes-category-item-span">{{ $t("common.all") }}</span>
                        </template>
                    </el-menu-item>
                    <el-menu-item v-for="(item,i) in notesCategory" :kay="i" :index="item.id">
                        <el-icon :size="25"><Coin /></el-icon>
                        <template #title>
                            <span class="notes-category-item-span">{{ item.name }}</span>
                        </template>
                    </el-menu-item>
                </el-menu>
            </el-aside>
            <el-main>
                
            </el-main>
        </el-container>
    </div>
</template>

<script lang="ts" setup>
import { ref,onMounted } from 'vue'
import { getNotesCategoryList,getNotesList } from '@/axios/api/notes';

const deafultActiveMenu = "0"//访问页面时默认菜单选项
let minHeight = ref("min-height:" + (window.innerHeight - 100) + "px;")//设置菜单栏高度
let isCollapse = ref(false) //菜单是否折叠
let asideWidth = ref("200px") //侧边栏宽度

const notesCategory:any = ref([]) //notes 类别数据
const notesCategorySelected = ref("0") //当前选择的 notes 类别
let searchInput = ref() //搜索输入内容
let page = ref(1) //页数
let pageTotal = ref(0) //总条数

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
    pageTotal = resp.data.total
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
</style>
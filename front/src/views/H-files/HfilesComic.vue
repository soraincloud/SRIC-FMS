<template>
    <div class="HfilesComic">
        <div class="HfilesComic-search-div">
            <el-row>
                <el-col :span="12">
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
                </el-col>
                <el-col :span="12">
                    <el-select v-model="mosaicSelect" class="HfilesComic-search-select" @change="reloadData">
                        <el-option label="所有修正" value="0" />
                        <el-option label="无修正" value="1" />
                        <el-option label="有修正" value="2" />
                    </el-select>
                    <el-select v-model="categorySelect" class="HfilesComic-search-select" @change="reloadData">
                        <el-option label="所有类型" value="0" />
                        <el-option label="短篇" value="1" />
                        <el-option label="单本" value="2" />
                    </el-select>
                </el-col>
            </el-row>
        </div>
        <el-scrollbar :height="scrollbarHeight">
            <el-card
                v-for="(item,i) in hComicList"
                :key="i"
                @mouseover="mouseOver(i)"
                @mouseleave="mouseLeave(i)"
                @click="mouseClick(i)"
                :style="item.background"
                class="HfilesComic-card"
                >
                <div class="HfilesComic-card-content">
                    <el-image :src="item.comicCover" class="HfilesComic-card-image" fit="contain"></el-image>
                    <div class="HfilesComic-card-details">
                        <span class="HfilesComic-card-name-text">{{ item.name }}</span>
                        <el-tag
                        class="HfilesComic-card-mosaic-text"
                        effect="plain"
                        :type="item.mosaicType"
                        >
                        <span class="HfilesComic-card-tag-text">{{ item.mosaicText }}</span>
                        </el-tag>
                        <el-tag
                        class="HfilesComic-card-category-text"
                        effect="plain"
                        :type="item.categoryType"
                        round
                        >
                        <span class="HfilesComic-card-tag-text">{{ item.categoryText }}</span>
                        </el-tag>
                        <div class="HfilesComic-card-tags-div">
                            <span class="HfilesComic-card-tag-text">TAGS:</span>
                            <el-tag
                            v-for="(tagItem,tagI) in item.hcomicTagList"
                            :key="tagI"
                            class="HfilesComic-card-tags"
                            effect="dark"
                            type="info"
                            size="small"
                            >
                            <span class="HfilesComic-card-tag-text">{{ tagItem.name }}</span>
                            </el-tag>
                        </div>
                    </div>
                </div>
            </el-card>
        </el-scrollbar>
        <div class="HfilesComic-pagination-div">
            <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" background />
        </div>
    </div>
</template>

<script lang="ts" setup>
import { getHComicList } from "@/axios/api/hComic"
import { ref,onMounted } from "vue";
import { useRouter } from "vue-router";

const router = useRouter()
let hComicList:any = ref([]) //本子列表数据
let scrollbarHeight = ref((window.innerHeight - 225) + "px") //设置滚动条高度
let searchInput = ref() //搜索输入内容
let mosaicSelect = ref("0") //修正类型
let categorySelect = ref("0") //类别
let page = ref("1") //页数
let pageTotal = ref("0") //总条数

onMounted( () => 
{
    getHComicListData()
});

const getHComicListData = async () =>
{
    try //获取视频列表
    {
        const requestData = 
        {
            searchInput: searchInput.value,
            mosaicSelect: mosaicSelect.value,
            categorySelect: categorySelect.value,
            page: page.value,
        }
        const resp = await getHComicList(requestData);
        pageTotal.value = resp.data.total
        hComicList.value = resp.data.hcomicList;
        hComicList.value.forEach((element:any,index:any) => 
        {
            if(element.mosaic == 1)
            {
                element.mosaicType = "success"
                element.mosaicText = "无修正"
            }
            else if(element.mosaic == 2)
            {
                element.mosaicType = "warning"
                element.mosaicText = "有修正"
            }
            else
            {
                element.mosaicType = "info"
                element.mosaicText = "修正类别错误"
            }

            if(element.category == 1)
            {
                element.categoryType = "danger"
                element.categoryText = "短篇"
            }
            else if(element.category == 2)
            {
                element.categoryType = "primary"
                element.categoryText = "单本"
            }
            else
            {
                element.mosaicType = "warning"
                element.mosaicText = "分类类别错误"
            }
            element.background = ""
        });
    }
    catch (error) 
    {
        console.error(error);
    }
}

const mouseOver = (i:any) => //鼠标移入
{
    hComicList.value[i].background = "border-width: 5px;"
}

const mouseLeave = (i:any) => //鼠标移出
{
    hComicList.value[i].background = ""
}



const mouseClick = (i:any) => //点击跳转
{
    const url = router.resolve
    ({
        name: 'HfilesComicReader',
        path: '/HfilesComicReader',
        query:
        {
            comic: hComicList.value[i].id
        },
    })

    window.open(url.href,'_blank')
}

const resetScrollbarHeight = () => //重置滚动条高度(适应窗口大小)
{
    scrollbarHeight.value = (window.innerHeight - 225) + "px"
}

window.addEventListener('resize',resetScrollbarHeight) //监听窗口变动

const clickSearch = () =>
{
    getHComicListData()
}

const pageChange = () =>
{
    getHComicListData()
}

const reloadData = () => //选择分类时刷新数据
{
    getHComicListData()
}
</script>

<style>
.HfilesComic-search-div
{
    margin-bottom: 10px;
}

.HfilesComic-search-select
{
    width: 100px;
    margin-left: 10px;
}

.HfilesComic-card-name-text
{
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.HfilesComic-card-mosaic-text
{
    margin-left: 20px;
    margin-bottom: 5px;
}

.HfilesComic-card-category-text
{
    margin-left: 10px;
    margin-bottom: 5px;
}

.HfilesComic-card-tags-div
{
    margin: 10px 0px 0px 0px;
}

.HfilesComic-card-tags
{
    margin: 0px 0px 2px 10px;
}

.HfilesComic-card-tag-text
{
    font-weight: bold;
}

.HfilesComic-card
{
    border-color: #aaaaaa;
    margin-bottom: 10px;
}

.HfilesComic-pagination-div
{
    margin-top: 10px;
}

.HfilesComic-card-image
{
    margin-top: 10px;
    border-radius: 10px;
    width: auto;
    height: 150px;
    margin-right: 20px;
    margin-bottom: 10px;
}

.HfilesComic-card-content
{
    display: flex;
}

.HfilesComic-card-details
{
    margin-top: 10px;
}
</style>
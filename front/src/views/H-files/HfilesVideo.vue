<template>
    <div class="HfilesVideo">
        <div class="HfilesVideo-search-div">
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
                    <el-select v-model="mosaicSelect" class="HfilesVideo-search-select" @change="reloadData">
                        <el-option label="所有修正" value="0" />
                        <el-option label="无修正" value="1" />
                        <el-option label="有修正" value="2" />
                    </el-select>
                    <el-select v-model="categorySelect" class="HfilesVideo-search-select" @change="reloadData">
                        <el-option label="所有类型" value="0" />
                        <el-option label="REAL" value="1" />
                        <el-option label="3D MMD" value="2" />
                        <el-option label="2D" value="3" />
                    </el-select>
                    <div style="float: right;">
                        <el-switch v-model="showVideoCover" />
                        <span class="HfilesVideo-showVideoCover-text">预览图</span>
                    </div>
                </el-col>
            </el-row>
        </div>
        <el-scrollbar :height="scrollbarHeight">
            <el-card
            v-for="(item,i) in hVideoList"
            :key="i"
            @mouseover="mouseOver(i)"
            @mouseleave="mouseLeave(i)"
            @click="mouseClick(i)"
            :style="item.background"
            class="HfilesVideo-card"
            >
                <span class="HfilesVideo-card-name-text">{{ item.name }}</span>
                <span class="HfilesVideo-card-number-text">{{ item.number }}</span>
                <el-tag
                class="HfilesVideo-card-mosaic-text"
                effect="plain"
                :type="item.mosaicType"
                >
                <span class="HfilesVideo-card-tag-text">{{ item.mosaicText }}</span>
                </el-tag>
                <el-tag
                class="HfilesVideo-card-category-text"
                effect="plain"
                :type="item.categoryType"
                round
                >
                <span class="HfilesVideo-card-tag-text">{{ item.categoryText }}</span>
                </el-tag>
                <div class="HfilesVideo-card-tags-div">
                    <span class="HfilesVideo-card-tag-text">TAGS:</span>
                    <el-tag
                    v-for="(tagItem,tagI) in item.hvideoTagList"
                    :key="tagI"
                    class="HfilesVideo-card-tags"
                    effect="dark"
                    type="info"
                    size="small"
                    >
                    <span class="HfilesVideo-card-tag-text">{{ tagItem.name }}</span>
                    </el-tag>
                </div>
                <div v-if="showVideoCover">
                    <el-image v-if="item.isVideoCoverNotNull" :src="item.videoCover" class="HfilesVideo-card-image"></el-image>
                </div>
            </el-card>
        </el-scrollbar>
        <div class="HfilesVideo-pagination-div">
            <el-pagination layout="prev, pager, next" v-model:current-page="page" @current-change="pageChange()" :page-size="20" :total="pageTotal" :pager-count="5" background />
        </div>
    </div>
</template>

<script lang="ts" setup>
import { getHVideoList } from "@/axios/api/hVideo"
import { ref,onMounted } from "vue";
import { useRouter } from "vue-router";

const router = useRouter()
let hVideoList:any = ref([]) //视频列表数据
let scrollbarHeight = ref((window.innerHeight - 225) + "px") //设置滚动条高度
let searchInput = ref() //搜索输入内容
let mosaicSelect = ref("0") //修正类型
let categorySelect = ref("0") //类别
let page = ref(1) //页数
let pageTotal = ref(0) //总条数
let showVideoCover = ref(false)

onMounted( () => 
{
    getHVideoListData()
});

const getHVideoListData = async () =>
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
        const resp = await getHVideoList(requestData);
        pageTotal.value = resp.data.total
        hVideoList.value = resp.data.hvideoList;
        hVideoList.value.forEach((element:any,index:any) => 
        {
            if(element.mosaic == 1)
            {
                element.mosaicType = "success"
                element.mosaicText = "无修正"
            }
            else if(element.mosaic == 2)
            {
                element.mosaicType = "info"
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
                element.categoryText = "REAL"
            }
            else if(element.category == 2)
            {
                element.categoryType = "primary"
                element.categoryText = "3D MMD"
            }
            else if(element.category == 3)
            {
                element.categoryType = "warning"
                element.categoryText = "2D"
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
    hVideoList.value[i].background = "border-width: 5px;"
}

const mouseLeave = (i:any) => //鼠标移出
{
    hVideoList.value[i].background = ""
}



const mouseClick = (i:any) => //点击跳转
{
    const url = router.resolve
    ({
        name: 'HfilesVideoPlayer',
        path: '/HfilesVideoPlayer',
        query:
        {
            video: hVideoList.value[i].id
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
    getHVideoListData()
}

const pageChange = () =>
{
    getHVideoListData()
}

const reloadData = () => //选择分类时刷新数据
{
    getHVideoListData()
}
</script>

<style>
.HfilesVideo-search-div
{
    margin-bottom: 10px;
}

.HfilesVideo-search-select
{
    width: 100px;
    margin-left: 10px;
}

.HfilesVideo-card-name-text
{
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.HfilesVideo-card-number-text
{
    font-size: 15px;
    font-weight: bold;
    margin: 0px 0px 0px 20px;
}

.HfilesVideo-card-mosaic-text
{
    margin-left: 20px;
    margin-bottom: 5px;
}

.HfilesVideo-card-category-text
{
    margin-left: 10px;
    margin-bottom: 5px;
}

.HfilesVideo-card-tags-div
{
    margin: 10px 0px 0px 0px;
}

.HfilesVideo-card-tags
{
    margin: 0px 0px 2px 10px;
}

.HfilesVideo-card-tag-text
{
    font-weight: bold;
}

.HfilesVideo-card
{
    border-color: #aaaaaa;
    margin-bottom: 10px;
}

.HfilesVideo-pagination-div
{
    margin-top: 10px;
}

.HfilesVideo-card-image
{
    margin-top: 10px;
    border-radius: 10px;
}

.HfilesVideo-showVideoCover-text
{
    margin: 10px 10px 0px 10px;
    font-weight: bold;
    font-size: 15px;
}
</style>
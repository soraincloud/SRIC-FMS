<template>
    <div class="HfilesVideo">
        <div class="HfilesVideo-search-div">
            <el-row>
                <el-col :span="12">
                    <el-input
                    v-model="searchInput"
                    placeholder="搜索"
                    >
                    <template #prepend>
                        <el-select v-model="searchSelect" style="width: 100px">
                            <el-option label="全部" value="0" />
                            <el-option label="名称" value="1" />
                            <el-option label="TAG" value="2" />
                        </el-select>
                    </template>
                    <template #append>
                        <el-button>
                            <el-icon>
                                <search/>
                            </el-icon>
                        </el-button>
                    </template>
                    </el-input>
                </el-col>
                <el-col :span="12">
                    <el-select v-model="mosaicSelect" class="HfilesVideo-search-select">
                        <el-option label="所有修正" value="0" />
                        <el-option label="无修正" value="1" />
                        <el-option label="有修正" value="2" />
                    </el-select>
                    <el-select v-model="categorySelect" class="HfilesVideo-search-select">
                        <el-option label="所有类型" value="0" />
                        <el-option label="REAL" value="1" />
                        <el-option label="3D MMD" value="2" />
                        <el-option label="2D" value="3" />
                    </el-select>
                </el-col>
            </el-row>
        </div>
        <el-scrollbar :height="scrollbarHeight">
            <el-card
            v-for="(item,i) in hVdeoList"
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
                    <span class="HfilesVideo-card-tag-text">{{ tagItem.tag }}</span>
                    </el-tag>
                </div>
            </el-card>
        </el-scrollbar>
    </div>
</template>

<script lang="ts" setup>
import { getHVideoList } from "@/axios/api/hVideo"
import { ref,onMounted } from "vue";
import { useRouter } from "vue-router";

const router = useRouter()
let hVdeoList:any = ref([]) //视频列表数据
let scrollbarHeight = ref((window.innerHeight - 185) + "px") //设置滚动条高度
let searchInput = ref()
let searchSelect = ref("0")
let mosaicSelect = ref("0")
let categorySelect = ref("0")

onMounted(async () => 
{
    try //获取视频列表
    {
        const resp = await getHVideoList({});
        hVdeoList.value = resp.data;
        hVdeoList.value.forEach((element:any,index:any) => 
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
            element.background = ""
        });
    }
    catch (error) 
    {
        console.error(error);
    }
});

const mouseOver = (i:any) => //鼠标移入
{
    hVdeoList.value[i].background = "border-width: 5px;"
}

const mouseLeave = (i:any) => //鼠标移出
{
    hVdeoList.value[i].background = ""
}



const mouseClick = (i:any) => //点击跳转
{
    const url = router.resolve
    ({
        name: 'HfilesVideoPlayer',
        path: '/HfilesVideoPlayer',
        query:
        {
            video: hVdeoList.value[i].id
        },
    })

    window.open(url.href,'_blank')
}

const resetScrollbarHeight = () => //重置滚动条高度(适应窗口大小)
{
    scrollbarHeight.value = (window.innerHeight - 185) + "px"
}

window.addEventListener('resize',resetScrollbarHeight) //监听窗口变动
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
</style>
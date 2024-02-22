<template>
    <div class="HfilesVideo">
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
    </div>
</template>

<script lang="ts" setup>
import { getHVideoList } from "@/axios/api/hVideo"
import { ref,onMounted } from "vue";
import { useRouter } from "vue-router";

const router = useRouter()
let hVdeoList:any = ref([])

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
        }
    })

    window.open(url.href,'_blank')
}
</script>

<style>
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
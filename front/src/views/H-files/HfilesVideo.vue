<template>
    <div class="HFilesVideo">
        <el-card
        v-for="(item,i) in hVdeoList"
        :key="i"
        >
            <span class="HFilesVideo-card-name-text">{{ item.name }}</span>
            <span class="HFilesVideo-card-number-text">{{ item.number }}</span>
            <el-tag
            class="HFilesVideo-card-mosaic-text"
            effect="plain"
            :type="item.mosaicType"
            >
            <span class="hFilesVideo-card-tag-text">{{ item.mosaicText }}</span>
            </el-tag>
            <el-tag
            class="HFilesVideo-card-category-text"
            effect="plain"
            :type="item.categoryType"
            round
            >
            <span class="hFilesVideo-card-tag-text">{{ item.categoryText }}</span>
            </el-tag>
            <div class="HFilesVideo-card-tags-div">
                <span class="hFilesVideo-card-tag-text">TAGS:</span>
                <el-tag
                v-for="(tagItem,tagI) in item.hvideoTagList"
                :key="tagI"
                class="HFilesVideo-card-tags"
                effect="dark"
                type="info"
                size="small"
                >
                <span class="hFilesVideo-card-tag-text">{{ tagItem.tag }}</span>
                </el-tag>
            </div>
        </el-card>
    </div>
</template>

<script lang="ts" setup>
import { getHVideoList } from "@/axios/api/hVideo"
import { ref,onMounted } from "vue";

let hVdeoList:any = ref([])

onMounted(async () => 
{
    try 
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
        });
    }
    catch (error) 
    {
        console.error(error);
    }
});
</script>

<style>
.HFilesVideo-card-name-text
{
    font-size: 30px;
    font-weight: bold;
    margin: 0;
}

.HFilesVideo-card-number-text
{
    font-size: 15px;
    font-weight: bold;
    margin: 0px 0px 0px 20px;
}

.HFilesVideo-card-mosaic-text
{
    margin-left: 20px;
    margin-bottom: 5px;
}

.HFilesVideo-card-category-text
{
    margin-left: 10px;
    margin-bottom: 5px;
}

.HFilesVideo-card-tags-div
{
    margin: 10px 0px 0px 0px;
}

.HFilesVideo-card-tags
{
    margin: 0px 0px 2px 10px;
}

.hFilesVideo-card-tag-text
{
    font-weight: bold;
}
</style>
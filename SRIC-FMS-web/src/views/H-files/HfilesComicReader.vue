<template>
    <div class="common-body-set-width">
        <el-container>
            <el-header>
                <span class="HfilesComicReader-header-name">{{ comicData.name }}</span>
            </el-header>
            <el-container>
                <el-aside :width="asideWidth">
                    <div>
                        <p class="HfilesComicReader-title">{{ $t("static.filename") }}</p>
                        <p class="HfilesComicReader-text">{{ comicData.fileName }}</p>
                        <p class="HfilesComicReader-title">{{ $t("static.category") }}</p>
                        <el-tag
                        class="HfilesComicReader-category-tag"
                        effect="plain"
                        :type="comicData.mosaicType"
                        >
                        <span class="HfilesVideo-card-tag-text">{{ comicData.mosaicText }}</span>
                        </el-tag>
                        <el-tag
                        class="HfilesComicReader-category-tag"
                        effect="plain"
                        :type="comicData.categoryType"
                        round
                        >
                        <span class="HfilesVideo-card-tag-text">{{ comicData.categoryText }}</span>
                        </el-tag>
                        <p class="HfilesComicReader-title">TAGS:</p>
                        <el-tag
                        v-for="(item,i) in comicData.hcomicTagList"
                        :key="i"
                        class="HfilesComicReader-tag"
                        effect="dark"
                        type="info"
                        size="small"
                        >
                            <span class="HfilesVideo-card-tag-text">{{ item.name }}</span>
                        </el-tag>
                        <p class="HfilesComicReader-title">{{ $t("static.operate") }}</p>
                        <el-select class="HfilesComicReader-add-select" v-model="addSelectValue" @change="addSelectValueChange" size="small">
                            <el-option
                            v-for="(item,i) in comicTagData"
                            :key="i"
                            :value="item.id"
                            :label="item.name"
                            ></el-option>
                        </el-select>
                        <el-popconfirm title="确定添加?" @confirm="addButtonConfirm">
                            <template #reference>
                                <el-button class="HfilesComicReader-add-button" size="small" type="primary" :disabled="addButtonDisabled" plain>
                                    <el-icon><Plus /></el-icon>
                                    <span class="HfilesComicReader-add-button-text">{{ $t("static.addThisTag") }}</span>
                                </el-button>
                            </template>
                        </el-popconfirm>
                    </div>
                </el-aside>
                <el-main>
                    <el-scrollbar :height="scrollbarHeight">
                        <div class="HfilesComicReader-comic-card-body">
                            <el-card
                            v-for="(item,i) in pageData"
                            :key="i"
                            class="HfilesComicReader-comic-card"
                            >
                            <el-image :src="item" :preview-src-list="pageData" :initial-index="i" lazy></el-image>
                            </el-card>
                        </div>
                        <div v-if="isMobile"> <!-- 一个重复的信息菜单 用于在页面过于狭窄时使用 -->
                            <p class="HfilesComicReader-title">{{ $t("static.filename") }}</p>
                            <p class="HfilesComicReader-text">{{ comicData.filename }}</p>
                            <p class="HfilesComicReader-title">{{ $t("static.category") }}</p>
                            <el-tag
                            class="HfilesComicReader-category-tag"
                            effect="plain"
                            :type="comicData.mosaicType"
                            >
                            <span class="HfilesVideo-card-tag-text">{{ comicData.mosaicText }}</span>
                            </el-tag>
                            <el-tag
                            class="HfilesComicReader-category-tag"
                            effect="plain"
                            :type="comicData.categoryType"
                            round
                            >
                            <span class="HfilesVideo-card-tag-text">{{ comicData.categoryText }}</span>
                            </el-tag>
                            <p class="HfilesComicReader-title">TAGS:</p>
                            <el-tag
                            v-for="(item,i) in comicData.hcomicTagList"
                            :key="i"
                            class="HfilesComicReader-tag"
                            effect="dark"
                            type="info"
                            size="small"
                            >
                                <span class="HfilesVideo-card-tag-text">{{ item.name }}</span>
                            </el-tag>
                            <p class="HfilesComicReader-title">{{ $t("static.operate") }}</p>
                            <el-select class="HfilesComicReader-add-select" v-model="addSelectValue" @change="addSelectValueChange" size="small">
                                <el-option
                                v-for="(item,i) in comicTagData"
                                :key="i"
                                :value="item.id"
                                :label="item.name"
                                ></el-option>
                            </el-select>
                            <el-popconfirm title="确定添加?" @confirm="addButtonConfirm">
                                <template #reference>
                                    <el-button class="HfilesComicReader-add-button" size="small" type="primary" :disabled="addButtonDisabled" plain>
                                        <el-icon><Plus /></el-icon>
                                        <span class="HfilesComicReader-add-button-text">{{ $t("static.addThisTag") }}</span>
                                    </el-button>
                                </template>
                            </el-popconfirm>
                        </div>
                    </el-scrollbar>
                </el-main>
            </el-container>
        </el-container>
    </div>
</template>

<script lang="ts" setup>
import axios from 'axios';
import { onMounted,ref } from 'vue';
import { useRoute } from 'vue-router'
import { ElMessage } from 'element-plus'
import { getHComicById,getHComicTagList,addHComicTag } from "@/axios/api/hComic"
import i18n from '@/language';

const { t } = i18n.global

const route = useRoute()

let comicData:any = ref({})
let pageData:any = ref([])
let scrollbarHeight = ref((window.innerHeight - 205) + "px") //设置滚动条高度
let comicTagData:any = ref({})
let addButtonDisabled:any = ref(true) //添加按钮是否禁用
let addSelectValue:any = ref() //选择栏值
let asideWidth:any = ref("200px") //左侧显示信息栏的宽度
let isMobile:any = ref(false) //窗口是否过小（移动端视角）

const getHComicData = async () => 
{
    try
    {
        const resp = await getHComicById({id:route.query.comic})
        comicData.value = resp.data.hcomic
        if(comicData.value.mosaic == 1)
        {
            comicData.value.mosaicType = "success"
            comicData.value.mosaicText = t("h.noMosaic")
        }
        else if(comicData.value.mosaic == 2)
        {
            comicData.value.mosaicType = "warning"
            comicData.value.mosaicText = t("h.mosaic")
        }
        else
        {
            comicData.value.mosaicType = "info"
            comicData.value.mosaicText = t("static.categoryError")
        }

        if(comicData.value.category == 1)
        {
            comicData.value.categoryType = "danger"
            comicData.value.categoryText = t("h.short")
        }
        else if(comicData.value.category == 2)
        {
            comicData.value.categoryType = "primary"
            comicData.value.categoryText = t("h.book")
        }
        else
        {
            comicData.value.mosaicType = "info"
            comicData.value.mosaicText = t("static.categoryError")
        }
        pageData.value = resp.data.hcomicPages
        pageData.value.forEach((element:any,index:any) => 
        {
            pageData.value[index] = axios.defaults.baseURL + element
        });
    } catch {}
}

const getHComicTagData = async () =>
{
    try
    {
        const resp = await getHComicTagList({})
        comicTagData.value = resp.data
    } catch {}
}

const submitHComicTag = async () =>
{
    try
    {
        const params = 
        {
            comicId: comicData.value.id,
            tagId: addSelectValue.value
        }
        const resp = await addHComicTag(params)
        if(resp.data.code == 200)
        {
            ElMessage({
                message: t("static.addSuccess"),
                type: 'success',
            })
        }
        else if(resp.data.code == 400)
        {
            ElMessage({
                message: t("static.tagAlready"),
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
        addSelectValue.value = ""
        addButtonDisabled.value = true
        getHComicData()
    } catch {}
}

onMounted(async () => 
{
    getHComicData()
    getHComicTagData()
})

const addSelectValueChange = () => //tag选项改变 启用添加按钮
{
    addButtonDisabled.value = false
}

const addButtonConfirm = () => //确定添加tag
{
    submitHComicTag()
}

const windowSizeChanged = () => //重置滚动条高度(适应窗口大小)
{
    if(window.innerWidth < 800) //在窗口过小时折叠菜单栏
    {
        isMobile.value = true
        asideWidth.value = "0px"
    }
    else
    {
        isMobile.value = false
        asideWidth.value = "200px"
    }
    scrollbarHeight.value = (window.innerHeight - 205) + "px"
}

windowSizeChanged()

window.addEventListener('resize',windowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.HfilesComicReader-header-name
{
    margin-left: 50px;
    font-weight: bold;
    font-size: 40px;
}

.HfilesComicReader-title
{
    margin: 20px 0px 0px 0px;
    font-size: 12px;
}

.HfilesComicReader-text
{
    margin: 0px 0px 20px 10px;
    font-weight: bold;
    font-size: 20px;
}

.HfilesComicReader-category-tag
{
    margin: 10px 0px 0px 10px;
    font-weight: bold;
}

.HfilesComicReader-tag
{
    margin: 10px 0px 0px 10px;
    font-weight: bold;
}

.HfilesComicReader-comic-card-body .el-card__body
{
    padding: 0px;
}

.HfilesComicReader-comic-card
{
    margin-top: 5px;
}

.HfilesComicReader-add-select
{
    margin-top: 10px;
}

.HfilesComicReader-add-button
{
    margin-top: 10px;
}

.HfilesComicReader-add-button-text
{
    font-weight: bold;
}
</style>
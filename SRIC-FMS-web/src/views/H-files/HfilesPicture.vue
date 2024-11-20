<template>
    <div>
        <el-scrollbar @scroll="handleScroll($event)" :height="scrollbarHeight">
            <el-row>
                <el-col :span="12">
                    <div id="hPictureLeftImage">
                        <el-card v-for="(item,i) in urlLeft" :key="i" class="HFilesPictuire-card">
                            <el-image :src="item" :preview-src-list="urlLeft" :initial-index="i"></el-image>  
                        </el-card>
                    </div>
                </el-col>
                <el-col :span="12">
                    <div id="hPictureRightImage">
                        <el-card v-for="(item,i) in urlRight" :key="i" class="HFilesPictuire-card">
                            <el-image :src="item" :preview-src-list="urlRight" :initial-index="i"></el-image>
                        </el-card>
                    </div>
                </el-col>
            </el-row>
            <div v-loading="loading">
                <el-card v-if="!isPictureAllLoad" class="HFilesPictuire-load-button-card" @click="clickLoadMore">
                    <p class="HFilesPictuire-load-button-p">{{ $t("static.loadMore") }}</p>
                </el-card>
                <el-card v-if="isPictureAllLoad" class="HFilesPictuire-load-button-card">
                    <p class="HFilesPictuire-load-button-p">{{ $t("static.noMore") }}</p>
                </el-card>
            </div>
        </el-scrollbar>
    </div>
</template>

<script lang="ts" setup>
    import axios from 'axios';
    import { onMounted,ref } from 'vue';
    import { getHPictureRandomList } from "@/axios/api/hPicture"

    const urlLeft:any = ref([]) //左侧图片数据
    const urlRight:any = ref([]) //右侧图片数据
    const scrollbarHeight = ref((window.innerHeight - 140) + "px") //设置滚动条高度
    const hPictureData:any = ref([]) //图片名称数组
    const hPictureNumber = ref() //图片总数
    const hPictureLoadNow = ref(-1) //当前加载到图片的位置
    const isPictureAllLoad = ref(false) //图片是否全部被加载
    const loading = ref(false) //加载更多按钮的loading

    const addPicture = (id:any,filename:any): Promise<void> => //向高度更小的一边添加名为filename的图片
    {
        return new Promise((resolve) => {
            const img = new Image();
            img.onload = () => {
                const leftContainer = document.getElementById("hPictureLeftImage");
                const rightContainer = document.getElementById("hPictureRightImage");
                if (leftContainer && rightContainer) {
                    const leftHeight = leftContainer.offsetHeight;
                    const rightHeight = rightContainer.offsetHeight;
                    if (leftHeight > rightHeight) {
                        urlRight.value.push(axios.defaults.baseURL + "/file/hPicture/" + id + "." + filename);
                    } else {
                        urlLeft.value.push(axios.defaults.baseURL + "/file/hPicture/" + id + "." + filename);
                    }
                    resolve(); // 图片加载完成后 resolve
                } else {
                    // 可能的错误处理
                }
            };
            img.src = axios.defaults.baseURL + "/file/hPicture/" + id + "." + filename;
        });
    };

    const getHPictureData = async () => //获取随机排列的图片数组
    {
        try
        {
            const resp = await getHPictureRandomList({})
            hPictureData.value = resp.data
            hPictureNumber.value = resp.data.length - 1
        } catch {}
    }

    const loadData = async (start:any,end:any) => //加载从start到end的图片 （end >= start）
    {
        for(let i = start;i <= end;i++)
        {
            await addPicture(hPictureData.value[i].id,hPictureData.value[i].filename)
        }
    }

    const loadMorePicture = async () => //加载更多图片
    {
        if(hPictureLoadNow.value + 10 <= hPictureNumber.value) //默认加载10张
        {
            await loadData(hPictureLoadNow.value + 1,hPictureLoadNow.value + 10)
            hPictureLoadNow.value = hPictureLoadNow.value + 10
        }
        else //不足十张时全部加载
        {
            await loadData(hPictureLoadNow.value + 1,hPictureNumber.value)
            hPictureLoadNow.value = hPictureNumber.value
        }

        if(hPictureLoadNow.value >= hPictureNumber.value) //判断是否已经全部加载（在这里判断是因为有可能总数为10的倍数 不会触发不足十张的全部加载）(大于等于避免溢出)
        {
            isPictureAllLoad.value = true
        }
    }

    const clickLoadMore = async () => //加载更多
    {
        loading.value = true
        await loadMorePicture()
        loading.value = false
    }

    onMounted( async () => 
    {
        await getHPictureData()
        await loadMorePicture()
    })

    const handleScroll = (e:any) => //滚动事件（返回滚动条当前位置）
    {
        console.log(e)
    }

    const windowSizeChanged = () => //重置滚动条高度(适应窗口大小)
    {
        scrollbarHeight.value = (window.innerHeight - 140) + "px"
    }

windowSizeChanged()

window.addEventListener('resize',windowSizeChanged) //监听窗口变动
</script>

<style>
@import '@/css/common.css';

.HFilesPictuire-card .el-card__body
{
    padding: 10px 10px 5px 10px;
}

.HFilesPictuire-load-button-card
{
    margin-top: 10px;
}

.HFilesPictuire-load-button-card .el-card__body
{
    padding: 0;
}

.HFilesPictuire-load-button-p
{
    text-align: center;
    font-weight: bold;
}
</style>
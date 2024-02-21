<template>
    <div>
        <el-card>

        </el-card>
    </div>
</template>

<script lang="ts" setup>
import { getHVideoList } from "@/axios/api/hVideo"

getHVideoList({}).then(resp => 
{
    console.log(resp)
}).catch(error => 
{
    console.log(error)
})
</script>
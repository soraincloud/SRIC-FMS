<template>
    <div class="app-user-message-setting-button-div">
        <el-tooltip placement="top" effect="light">
        <template #content>
            <div>{{ $t("common.language") }}</div>
            <el-radio-group v-model="language" @change="languageChange">
            <div class="app-user-message-language-radio-group-div">
                <el-radio value="zh" size="small" class="app-user-message-language-radio">中文</el-radio>
                <el-radio value="en" size="small" class="app-user-message-language-radio">english</el-radio>
            </div>
            </el-radio-group>
        </template>
        <el-button class="app-user-message-setting-button" text circle >
            <el-icon>
            <Collection />
            </el-icon>
        </el-button>
        </el-tooltip>
        <el-tooltip placement="top" effect="light">
        <template #content>
            <div>{{ $t("common.line") }}</div>
            <line-select-radio></line-select-radio>
        </template>
        <el-button class="app-user-message-setting-button" text circle >
            <el-icon>
            <Operation />
            </el-icon>
        </el-button>
        </el-tooltip>
        <el-tooltip placement="top" effect="light">
        <template #content>{{ $t("common.management") }}</template>
        <el-button @click="clickManagement" class="app-user-message-setting-button" text circle >
            <el-icon>
            <SetUp />
            </el-icon>
        </el-button>
        </el-tooltip>
    </div>
</template>

<script lang="ts" setup>
    import LineSelectRadio from '@/components/LineSelectRadio.vue'
    import { ref } from 'vue'
    import { useRouter } from 'vue-router'
    import { useI18n } from 'vue-i18n'
    import i18n from '@/language';
    const { t } = i18n.global

    let router = useRouter()
    const { locale } = useI18n()

    const language = ref("en") //切换按钮绑定的语言

    const languageChange = (lang :any) => //语言改变
    {
        locale.value = lang
        localStorage.setItem("language",lang)
    }

    const clickManagement = () => //点击管理
    {
        router.push('Manage')
    }

    const checkLanguageLocalStorage = () => //检查当前语言的localStorage 更新用户信息(用户名，头像)
    {
        if(localStorage.getItem("language") == "zh")
        {
            language.value = "zh"
        }
        else
        {
            language.value = "en"
        }
    }

    checkLanguageLocalStorage() //初始化时获取当前语言
</script>

<style>
.app-user-message-setting-button-div
{
    margin-left: 10px;
}

.app-user-message-language-radio-group-div
{
  display: flex;
  flex-direction: column;
}

.app-user-message-language-radio
{
  width: 100%;
}

.app-user-message-setting-button
{
  margin: 0px !important;
}
</style>
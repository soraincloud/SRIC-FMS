<template>
    <div class="app-user-message-setting-button-div">
        <el-switch
            v-model="isDarkModeOpen"
            active-action-icon="MoonNight"
            inactive-action-icon="Sunrise"
            class="app-menu-switch"
            size="large"
            @change="changeDarkMode"
        />
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
    </div>
</template>

<script lang="ts" setup>
    import LineSelectRadio from '@/components/LineSelectRadio.vue'
    import { useDark, useToggle } from '@vueuse/core'
    import { ref } from 'vue'
    import { useI18n } from 'vue-i18n'
    
    const isDark = useDark()//黑暗模式所需变量
    const { locale } = useI18n()

    const isDarkModeOpen = ref(false)//当前是否为黑暗模式
    const language = ref("en") //切换按钮绑定的语言

    if(localStorage.getItem('vueuse-color-scheme') == 'auto')//通过当前模式设置开关状态
    {
        isDarkModeOpen.value = true
    }

    const changeDarkMode = () => //改变模式
    {
        setTimeout( () => //延时是为了按钮切换动画能够完整播放
        {
            const toggleDark = useToggle(isDark)
            toggleDark()
        },
            150
        )
    }

    const languageChange = (lang :any) => //语言改变
    {
        locale.value = lang
        localStorage.setItem("language",lang)
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

.app-menu-switch
{
  margin-right: 10px;
  --el-switch-on-color: #555555 !important;
}
</style>
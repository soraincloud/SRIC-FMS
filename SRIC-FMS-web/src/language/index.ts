import { createI18n } from 'vue-i18n'

import zh from '@/language/zh'
import en from '@/language/en'

const i18n = createI18n
({
  legacy: false, // 不使用 legacy 模式
  messages: 
  {
    zh,
    en,
  },
  globalInjection: true,
  locale:localStorage.getItem('language') || 'zh',
})

export default i18n
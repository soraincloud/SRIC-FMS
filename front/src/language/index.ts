import { createI18n } from 'vue-i18n'

import zh from '@/language/zh'
import en from '@/language/en'

const i18n = createI18n
({
  messages: 
  {
    zh,
    en,
  },
  globalInjection: true,
  locale:localStorage.getItem('language') || 'en',
})

export default i18n
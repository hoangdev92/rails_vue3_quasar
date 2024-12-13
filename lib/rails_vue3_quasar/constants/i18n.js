import { createI18n } from 'vue-i18n'
export const i18n = createI18n({
  // something vue-i18n options here ...
  locale: 'en',
  fallbackLocale: 'en',
  messages: {
    "en": {
      "hello": "Hello world!"
    },
    "ja": {
      "hello": "こんにちは、世界！"
    }
  }
})

// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  appConfig: {
    welcomeMessage: process.env.WEB_MSG
  },
  devtools: { enabled: true },
  
})

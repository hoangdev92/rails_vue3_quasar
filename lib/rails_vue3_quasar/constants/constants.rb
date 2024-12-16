# frozen_string_literal: true

module Constants
  VITE_CONFIG = <<-vite
import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import VitePlugin from "@vitejs/plugin-vue"
import FullReload from  'vite-plugin-full-reload'
import vuetify from  'vite-plugin-vuetify'
import { quasar } from '@quasar/vite-plugin'
import { fileURLToPath } from 'node:url'

export default defineConfig({
  plugins: [
    RubyPlugin(),
    VitePlugin(),
    vuetify ({ autoImport : true }),
    FullReload ([ 'config/routes.rb' , 'app/views/**/*' ], { delay : 200 }),
    quasar({
      sassVariables: fileURLToPath(
        new URL('./app/frontend/css/quasar-variables.sass', import.meta.url)
      )
    }),
  ],
})
vite

INIT_VITE = <<-vite
import createApp from "../../frontend/app";
createApp();
vite
end

# frozen_string_literal: true

require 'rails_vue3_quasar/base_handle'
require 'FileUtils'
require 'rails_vue3_quasar/constants/constants'

module RailsVue3Quasar
  # class add setting
  class HandleAddSetting < RailsVue3Quasar::BaseHandle
    def process
      create_dir_fontend
      add_vite_config_ts
      add_file_app_js
      add_file_i18n_js
      add_file_pages_js
      add_file_vuetify_js
      add_file_main_vue
      add_file_css_quasar
      add_file_rails_vue
      add_file_rails_vue_controller
    end

    private

    def add_file_rails_vue_controller
      source_file = File.expand_path('../rails_vue3_quasar/constants/controllers/rails_vue_controller.rb', __dir__)
      destination_file = "#{project_root}/app/controllers/rails_vue_controller.rb"

      if File.exist?(destination_file)
        puts 'The RailsVueController.rb file already exists, overwrite the old file.'
      else
        puts 'The RailsVueController.rb file does not exist yet, copy it from the constants folder.'
      end

      FileUtils.cp(source_file, destination_file)
    end

    def add_file_rails_vue
      source_file = File.expand_path('../rails_vue3_quasar/constants/Pages/rails_vue/index.vue', __dir__)
      puts(source_file)
      destination_file = "#{project_root}/app/frontend/Pages/rails_vue/index.vue"

      if File.exist?(destination_file)
        puts 'The index.vue file already exists, overwrite the old file.'
      else
        puts 'The index.vue file does not exist yet, copy it from the constants folder.'
      end

      FileUtils.cp(source_file, destination_file)
    end

    def add_file_main_vue
      source_file = File.expand_path('../rails_vue3_quasar/constants/Layouts/Main.vue', __dir__)
      destination_file = "#{project_root}/app/frontend/Layouts/Main.vue"

      if File.exist?(destination_file)
        puts 'The main.vue file already exists, overwrite the old file.'
      else
        puts 'The main.vue file does not exist yet, copy it from the constants folder.'
      end

      FileUtils.cp(source_file, destination_file)
    end

    def add_file_css_quasar
      source_file = File.expand_path('../rails_vue3_quasar/constants/css/quasar-variables.sass', __dir__)
      destination_file = "#{project_root}/app/frontend/css/quasar-variables.sass"

      if File.exist?(destination_file)
        puts 'The quasar.css file already exists, overwrite the old file.'
      else
        puts 'The quasar.css file does not exist yet, copy it from the constants folder.'
      end

      FileUtils.cp(source_file, destination_file)
    end

    def add_vite_config_ts
      config = Constants::VITE_CONFIG
      puts('vite.config.ts will be overwritten') if File.exist?("#{project_root}/vite.config.ts")
      File.open("#{project_root}/vite.config.ts", 'w') { |file| file.write(config) }
    end

    def add_file_app_js
      puts('file app.js will be overwritten') if File.exist?("#{project_root}/app/frontend/app.js")
      source_file = File.expand_path('../rails_vue3_quasar/constants/app.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/app.js")
    end

    def add_file_i18n_js
      puts('file i18n.js will be overwritten') if File.exist?("#{project_root}/app/frontend/i18n.js")
      source_file = File.expand_path('../rails_vue3_quasar/constants/i18n.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/i18n.js")
    end

    def add_file_pages_js
      puts('file pages.js will be overwritten') if File.exist?("#{project_root}/app/frontend/pages.js")
      source_file = File.expand_path('../rails_vue3_quasar/constants/pages.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/pages.js")
    end

    def add_file_vuetify_js
      puts('file pages.js will be overwritten') if File.exist?("#{project_root}/app/frontend/vuetify.js")
      source_file = File.expand_path('../rails_vue3_quasar/constants/vuetify.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/vuetify.js")
    end

    def create_dir_fontend
      FileUtils.mkdir_p("#{project_root}/app/frontend") unless File.exist?("#{project_root}/app/frontend")
      FileUtils.mkdir_p("#{project_root}/app/frontend/Pages") unless File.exist?("#{project_root}/app/frontend/Pages")
      FileUtils.mkdir_p("#{project_root}/app/frontend/css") unless File.exist?("#{project_root}/app/frontend/css")
      FileUtils.mkdir_p("#{project_root}/app/frontend/Layouts") unless File.exist?("#{project_root}/app/frontend/Layouts")
      FileUtils.mkdir_p("#{project_root}/app/frontend/Pages/rails_vue") unless File.exist?("#{project_root}/app/frontend/Pages/rails_vue")
    end
  end
end

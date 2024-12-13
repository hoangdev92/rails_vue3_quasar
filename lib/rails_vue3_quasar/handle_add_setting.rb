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
    end

    private

    def add_vite_config_ts
      config = Constants::VITE_CONFIG
      puts('vite.config.ts will be overwritten') if File.exist?("#{project_root}/vite.config.ts")
      File.open("#{project_root}/vite.config.ts", 'w') { |file| file.write(config) }
    end

    def add_file_app_js
      puts('file app.js will be overwritten')
      source_file = File.expand_path('../rails_vue3_quasar/constants/app.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/app.js")
    end

    def add_file_i18n_js
      puts('file app.js will be overwritten')
      source_file = File.expand_path('../rails_vue3_quasar/constants/i18n.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/i18n.js")
    end

    def add_file_pages_js
      puts('file app.js will be overwritten')
      source_file = File.expand_path('../rails_vue3_quasar/constants/pages.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/pages.js")
    end

    def add_file_vuetify_js
      puts('file app.js will be overwritten')
      source_file = File.expand_path('../rails_vue3_quasar/constants/vuetify.js', __dir__)
      FileUtils.cp(source_file, "#{project_root}/app/frontend/vuetify.js")
    end

    def create_dir_fontend
      FileUtils.mkdir_p("#{project_root}/app/frontend") unless File.exist?("#{project_root}/app/frontend")
      FileUtils.mkdir_p("#{project_root}/app/frontend/Pages") unless File.exist?("#{project_root}/app/frontend/Pages")
    end
  end
end

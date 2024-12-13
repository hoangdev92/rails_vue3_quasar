# frozen_string_literal: true

module RailsVue3Quasar
  # class add setting
  class HandleAddSetting
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
      FileUtils.cp('./constants/app.js', "#{project_root}/app/frontend/app.js")
    end

    def add_file_i18n_js
      puts('file app.js will be overwritten')
      FileUtils.cp('./constants/i18n.js', "#{project_root}/app/frontend/i18n.js")
    end

    def add_file_pages_js
      puts('file app.js will be overwritten')
      FileUtils.cp('./constants/pages.js', "#{project_root}/app/frontend/pages.js")
    end

    def add_file_vuetify_js
      puts('file app.js will be overwritten')
      FileUtils.cp('./constants/vuetify.js', "#{project_root}/app/frontend/vuetify.js")
    end

    def create_dir_fontend
      FileUtils.mkdir_p("#{project_root}/app/frontend") unless File.exist?("#{project_root}/app/frontend")
      FileUtils.mkdir_p("#{project_root}/app/frontend/Pages") unless File.exist?("#{project_root}/app/frontend/Pages")
    end
  end
end

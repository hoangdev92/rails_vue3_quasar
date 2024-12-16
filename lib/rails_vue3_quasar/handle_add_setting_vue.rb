# frozen_string_literal: true

require 'rails_vue3_quasar/base_handle'
require 'rails_vue3_quasar/constants/constants'

module RailsVue3Quasar
  class HandleAddSettingVue < RailsVue3Quasar::BaseHandle
    def process
      add_init_rails
    end

    private

    def add_init_rails
      config = Constants::INIT_VITE
      if File.exist?("#{project_root}/app/javascript/entrypoints/application.js")
        puts('vite.config.ts will be overwritten')
      end
      File.open("#{project_root}/app/javascript/entrypoints/application.js", 'a') { |file| file.write(config) }
    end
  end
end

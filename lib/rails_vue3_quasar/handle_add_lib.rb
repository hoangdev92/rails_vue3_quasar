# frozen_string_literal: true

require 'rails_vue3_quasar/base_handle'
require 'FileUtils'
require 'rails_vue3_quasar/handle_add_gem'
require 'rails_vue3_quasar/handle_add_setting'
require 'rails_vue3_quasar/handle_run_dependency'
require 'rails_vue3_quasar/handle_change_routes'
require 'rails_vue3_quasar/handle_add_setting_vue'

module RailsVue3Quasar
  # class add library BaseHandle
  class HandleAddLib < RailsVue3Quasar::BaseHandle
    attr_reader :add_phaser

    def initialize(add_phaser)
      @add_phaser = add_phaser
    end

    def process
      add_file_package_json
      add_phaser_lib if add_phaser == '-g'
      HandleAddGem.process
      HandleAddSetting.process
      HandleRunDependency.run
      run_install_lib_by_yarn
      HandleChangeRoutes.process
      HandleAddSettingVue.process
    end

    private

    def run_install_lib_by_yarn
      unless install_yarn?
        puts 'Yarn is not installed. Please install Yarn and try again.'
        return
      end

      system('yarn install')
    end

    def add_phaser_lib
      unless install_yarn?
        puts 'Yarn is not installed. Please install Yarn and try again.'
        return
      end

      system('yarn add phaser')
    end

    def add_file_package_json
      source_file = File.expand_path('../rails_vue3_quasar/constants/package.json', __dir__)
      destination_file = "#{project_root}/package.json"

      if File.exist?(destination_file)
        puts 'The package.json file already exists, overwrite the old file.'
      else
        puts 'The package.json file does not exist yet, copy it from the constants folder.'
      end

      FileUtils.cp(source_file, destination_file)
    end
  end
end

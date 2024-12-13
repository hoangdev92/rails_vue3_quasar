# frozen_string_literal: true

module RailsVue3Quasar
  # class add library
  class HandleAddLib < BaseHandle
    attr_reader :add_phaser

    def initialize(add_phaser)
      @add_phaser = add_phaser
      super
    end

    def process
      add_file_package_json
      add_phaser_lib if add_phaser == '-g'
      HandleAddGem.process
      HandleAddSetting.process
      HandleRunDepedency.run
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
      source_file = './constants/package.json'
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

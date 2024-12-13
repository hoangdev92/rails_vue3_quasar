# frozen_string_literal: true

module RailsVue3Quasar
  # class base handle
  # phaser
  class BaseHandle
    def self.process(*args, &block)
      new(*args, &block).process
    end

    def project_root
      current_dir = Dir.pwd
      until File.exist?(File.join(current_dir, 'Gemfile'))
        parent_dir = File.expand_path('..', current_dir)
        return nil if current_dir == parent_dir # Reached the root directory

        current_dir = parent_dir
      end
      current_dir
    end

    def install_yarn?
      system('which yarn > /dev/null 2>&1')
    end
  end
end

# frozen_string_literal: true

module RailsVue3Quasar
  # class add gem
  class HandleAddGem < BaseHandle
    def process
      gems_to_add.each do |gem_name, gem_version|
        add_gem_to_gemfile(gem_name, gem_version)
      end

      run_bundle_install
    end

    private

    def gems_to_add
      {
        'pagy' => '~> 9.1',
        'paranoia' => '~> 3.0',
        'pundit' => '~> 2.4',
        'rack-cors' => { version: '~> 2.0', additional_version: '>= 2.0.1' },
        'ransack' => { version: '~> 4.2', additional_version: '>= 4.2.1' },
        'vite_rails' => { version: '~> 3.0', additional_version: '>= 3.0.17' },
        'inertia_rails' => '~> 3.4',
        'js_from_routes' => { version: '~> 4.0', additional_version: '>= 4.0.1' }
      }
    end

    def add_gem_to_gemfile(gem_name, gem_version)
      gemfile_path = find_gemfile_path
      gemfile_content = File.read(gemfile_path)

      return if gemfile_content.include?("gem '#{gem_name}'")

      File.open(gemfile_path, 'a') do |file|
        if gem_version.is_a?(Hash)
          file.puts "gem '#{gem_name}', '#{gem_version[:version]}', '#{gem_version[:additional_version]}'"
        else
          file.puts "gem '#{gem_name}', '#{gem_version}'"
        end
      end
    end

    def run_bundle_install
      puts('Running bundle install...')
      system('bundle install')
      puts('Running bundle install done...')
    end

    def find_gemfile_path
      current_dir = Dir.pwd

      until File.exist?(File.join(current_dir, 'Gemfile'))
        parent_dir = File.expand_path('..', current_dir)
        break if current_dir == parent_dir # Reached the root directory

        current_dir = parent_dir
      end

      gemfile_path = File.join(current_dir, 'Gemfile')
      raise Error, 'Gemfile not found' unless File.exist?(gemfile_path)

      gemfile_path
    end
  end
end

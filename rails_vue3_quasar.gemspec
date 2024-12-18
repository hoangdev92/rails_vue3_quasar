# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_vue3_quasar/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_vue3_quasar'
  spec.version       = RailsVue3Quasar::VERSION
  spec.authors       = %w[devhoanglv92]
  spec.email         = %w[devhoanglv92@gmail.com]

  spec.summary       = 'Auto add vue3 and quasar to rails project'
  spec.description   = 'Auto add vue3 and quasar to rails project'
  spec.homepage      = 'https://github.com/hoangdev92/rails_vue3_quasar'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/hoangdev92/rails_vue3_quasar'
    spec.metadata['changelog_uri'] = 'https://github.com/hoangdev92/rails_vue3_quasa/rblob/master/CHANGELOG.md'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.glob("lib/**/*") + Dir.glob("bin/*") + ["rails_vue3_quasar.gemspec", "README.md", "LICENSE.txt"]
  spec.bindir        = 'bin'
  spec.executables   = ['rails_vue3_quasar']
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency 'rails', '~> 6.0'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'ruby', '~> 2.3'
end

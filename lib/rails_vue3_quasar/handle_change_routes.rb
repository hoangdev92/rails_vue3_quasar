# frozen_string_literal: true

require 'rails_vue3_quasar/base_handle'
require 'FileUtils'
module RailsVue3Quasar
  # class change file routes
  class HandleChangeRoutes < RailsVue3Quasar::BaseHandle
    def process
      change_file_routes
    end

    private

    def change_file_routes
      route_to_add = "defaults export: true do\n   get 'demo_vue' => 'rails_vue#index', as: :rails_vue\n end\n"

      file_path = "#{project_root}/config/routes.rb"
      routes = File.read(file_path)

      # Insert the new route at the top of the routes file
      updated_routes = routes.sub(
        'Rails.application.routes.draw do', "Rails.application.routes.draw do\n  #{route_to_add}"
      )
      File.write(file_path, updated_routes)
    end
  end
end

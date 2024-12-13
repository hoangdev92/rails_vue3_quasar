# frozen_string_literal: true

module RailsVue3Quasar
  # class handle run dependency
  class HandleRunDepedency
    MESS = <<-message
# routes.rb
Rails.application.routes.draw do
  defaults export: true do
    resources :expenses
    resources :categories
  end
end
message

    def self.run
      puts('generate js from routes')
      puts('please change file routes js:')
      puts(MESS)
      system('rake js_from_routes:generate')
      puts('done generate js from routes')
      puts('If you change your routes file, run `rake js_from_routes:generate` to update js_from_routes with the new paths')
    end
  end
end

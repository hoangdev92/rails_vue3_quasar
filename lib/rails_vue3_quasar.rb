# frozen_string_literal: true

require 'rails_vue3_quasar/version'
require 'rails_vue3_quasar/handle_add_lib'
require 'rails_vue3_quasar'

module RailsVue3Quasar
  class Error < StandardError; end

  # class to run command
  class RailsVue3
    class << self
      def run(add_phaser = '')
        RailsVue3Quasar::HandleAddLib.new(add_phaser).process
      end
    end
  end
end

# frozen_string_literal: true

require 'rails_vue3_quasar/version'

module RailsVue3Quasar
  class Error < StandardError; end

  # class to run command
  class RailsVue3
    class << self
      def run(add_phaser = '')
        RailsVue3Quasar::HandleAddLib.process(add_phaser)
      end
    end
  end
end

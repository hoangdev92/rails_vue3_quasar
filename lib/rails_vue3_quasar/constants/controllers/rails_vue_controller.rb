# frozen_string_literal: true

# class demo
class RailsVueController < ApplicationController
  def index
    demo = [{ name: 'John Doe', id: 1 }]
    render inertia: 'rails_vue/index', props: { lists: demo }
  end
end

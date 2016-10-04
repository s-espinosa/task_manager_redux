require 'rack/test'
require 'rspec'
require File.expand_path('../../config/environment.rb', __FILE__)
require 'capybara/dsl'

ENV['RACK_ENV'] = 'test'

Capybara.app = TaskManagerApp

RSpec.configure do |c|
  c.before(:all) do
    Task.destroy_all
  end
  c.after(:each) do
    Task.destroy_all
  end
  c.include Capybara::DSL
end

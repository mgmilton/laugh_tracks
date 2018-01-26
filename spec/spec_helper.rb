ENV["RACK_ENV"] = "test"

require 'bundler'
require 'pry'

Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

DatabaseCleaner.strategy = :truncation
require 'capybara/rspec'

Capybara.app = LaughTracksApp

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end

  c.after(:each) do
    DatabaseCleaner.clean
  end

  c.include Capybara::DSL
end

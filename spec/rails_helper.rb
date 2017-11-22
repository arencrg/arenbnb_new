require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'
require 'database_cleaner'
require 'devise'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

#Not sure how helpful this is but I'll put it here just in case hehehe
  config.render_views
#devise support
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.extend ControllerMacros, :type => :controller
#factory bot
  config.include FactoryBot::Syntax::Methods

end

ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all
end

class ActionDispatch::IntegrationTest
  include Capybara::DSL

  def sign_in_as_admin
    page.driver.browser.basic_authorize('admin', Skyway.admin_password)
    visit "/admin"
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end

# frozen_string_literal: true
require 'selenium-webdriver'
require "rack"

Before do
   @driver = Capybara.current_session.driver
   @pages = Android::PageFactory.new
  # if @driver.appium_driver.device_is_ios?
  Capybara.default_max_wait_time = 30
end

Before('@wip or @ignore') do
  pending
end

Before('@wip-iOS or @bug-ios') do
  pending if @driver.appium_driver.device_is_ios?
end

Before('@wip-android') do
  pending if @driver.appium_driver.device_is_android?
end

Before('@exclusivo-android') do
  skip_this_scenario if @driver.appium_driver.device_is_ios?
end

Before('@exclusivo-ios') do
  skip_this_scenario if @driver.appium_driver.device_is_android?
end
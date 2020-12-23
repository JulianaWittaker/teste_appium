require 'appium_lib'
require 'appium_capybara'
require 'cucumber'
require 'bundler/setup'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'toml-rb'
require 'active_support/all'
require 'i18n'
Gem.find_files('mobile_helpers/screen_actions/android/*.rb', check_load_path: false).each { |path| require path }
Gem.find_files('mobile_helpers/screen_actions/ios/*.rb', check_load_path: false).each { |path| require path }

def load_appium_configuration
    TomlRB.load_file(File.expand_path("./../../../config/#{ENV['PLATFORM_NAME'].downcase}/appium.toml",
                                      __FILE__))
end

caps = load_appium_configuration
APPIUM_PORT = ENV['APPIUM_PORT'] || '4723'
APPIUM_HOST = ENV['APPIUM_HOST'] || 'localhost'
Capybara.configure do |config|
    config.default_max_wait_time = 50
    config.default_driver = :appium
    config.default_selector = :id
    config.ignore_hidden_elements = false
    Capybara.register_driver(:appium) do |app|
      appium_lib_options = { server_url: "http://#{APPIUM_HOST}:#{APPIUM_PORT}/wd/hub",
                             export_session: true }
      all_options = {
        appium_lib: appium_lib_options,
        caps: caps['caps']
      }
      Appium::Capybara::Driver.new app, all_options
    end
  end
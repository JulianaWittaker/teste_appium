# frozen_string_literal: true

module Config
  def load_appium_configuration
    TomlRB.load_file(File.expand_path("./../../../config/#{ENV['PLATFORM_NAME'].downcase}/appium.toml", __FILE__))
  end
end

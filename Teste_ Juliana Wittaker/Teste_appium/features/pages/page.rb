# frozen_string_literal: true

require_relative 'actions/common_actions'

class Page < SitePrism::Page
  include CommonActions

  TIMEOUT ||= 45
  APP_PACKAGE ||= ENV['APP_PACKAGE'].freeze
end

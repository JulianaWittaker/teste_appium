# frozen_string_literal: true

require_relative '../pages/page.rb'

module Android
  class CommonPage < Page
      include CommonActions

  element :vehicle, ''

    end
  end

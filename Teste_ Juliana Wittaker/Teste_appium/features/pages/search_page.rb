# frozen_string_literal: true

require_relative '../pages/common_page.rb'

module Android
    module Search
      class List < Android::CommonPage
        include SearchPageActions
        element :fill_with_brand, :id,
                '-'
        element :search_buttom, :id,
                '_'
        element :search_results, :xpath,
                '_'
        element :search_model, :id,
                '_'
        element :fill_with_model_and_model, :id,
                '_'

        element :fill_with_brand_and_version, :id,
                '_'

        element :fill_with_model_and_version, :id,
                '_'
      end
    end
end

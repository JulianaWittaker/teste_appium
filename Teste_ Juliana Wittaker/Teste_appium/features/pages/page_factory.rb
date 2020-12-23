# frozen_string_literal: true

module Android
      class PageFactory
  
       def commom_page
        Android::CommonPage.new
       end

       def list_page
        Android::ListPage.new
       end

        def page
        Android::Page.new
        end

        def search_page
        Android::SearchPage.new
        end
  
      end
    end
module CommonActions
    def scroll_up
      Object.const_get("ScreenActions::#{DEVICE_PLATFORM}::SwipeHelper")
            .new(page.driver.appium_driver)
            .swipe_vertical(top_to_bottom: true)
    end
  
    def scroll_down
      Object.const_get("ScreenActions::#{DEVICE_PLATFORM}::SwipeHelper")
            .new(page.driver.appium_driver)
            .swipe_vertical(top_to_bottom: false)
    end
end
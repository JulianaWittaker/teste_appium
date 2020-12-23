require_relative '../pages/common_page.rb'

module Android
  class ListPage < Android::CommonPage
    include Android::ListPageActions

    element :text_vehicles, :xpath,
            '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.TextView'

    elements :list_of_vehicles, :id,
             'a05860d5-b18b-48cc-848b-fbed9192acaf'

    element :scroll_down_page, :id,
           'execute_script' 'mobile: scroll', direction: 'down'

    element :access_vehicle, :xpath,
            '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.view.ViewGroup'

    element :vehicles_details, :id,
            '3a01224a-e9d4-41a9-b5a3-9dd2c163d97e'

    element :text_details, :id,
            '3a01224a-e9d4-41a9-b5a3-9dd2c163d97e'
  end
end

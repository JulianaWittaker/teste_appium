    # frozen_string_literal: true
    
    Dado(/^que "([^"]*)" acessou o aplicativo de veículos$/) do |_actor|
    #  @pages.list_page.assert_text(text_vehicles)
    expect(@pages.list_page.wait_until_text_vehicles_visible).to be_truthy
  end
  
  Então(/^deverá ver uma listagem com todos os veículos disponiveis$/) do
    expect(@pages.list_page.list_of_vehicles.first).to be_visible
  end
  
  Quando(/^el[ae] fizer um scroll na tela$/) do
    @pages.scroll_down_page.scroll_down
  end

  Então(/^el[ae] ?deverá ver mais ve'i'culos disponíveis na listagem$/) do
    expect(@pages.list_page.list_of_vehicles.first).to be_visible
  end
  
 # Dado(/^el[ae] ?ver a listagem de veículos$/) do
 #   @pages.list_page.list_of_vehicles
 # end
  
  Quando(/^el[ae] ?acessar um ve;iculo de seu interesse$/) do
   @pages.list_page.access_vehicle.click
  end
  
  Então(/^el[ae] ?deve ser redirecionado para tela de detalhe do veiculo contendo informações sobre o veículo$/) do
   # @pages.list_page.vehicle_details
    expect(@pages.list_page.text_details[:text]).to eql 'Detalhe do Veículo'
  end

  Dado(/ˆque "([^"]*)" ?acesse o aplicativo de veículos$/) do |_actor|
    @pages.list_page.assert_text
    expect(@pages.list_page.text_vehicles[:text]).to eql 'Carros'
  end
  
  Dado(/^el[ae] ?digita no campo a marca de sua preferência$/) do
    @pages.search_page.fill_with_brand
  end
  
  Quando(/^el[ae] ?a opção buscar$/) do
    @pages.search_page.search_buttom.click
  end
  
  Então(/^el[ae] ?deve ver os veículos pertinentes a busca feita$/) do
    @pages.search_page.search_results
  end
  
  Dado(/^el[ae] ?digita no campo o modelo de sua preferência$/) do
    @pages.search_page.fill_with_model
  end
  
  Dado(/^el[ae] ?digita no campo a marca e modelo de sua preferência$/) do
    @pages.search_page.fill_with_model_and_model
  end
  
  Dado(/^el[ae] ?digita no campo a marca e versão de sua preferência$/) do
    @pages.search_page.fill_with_brand_and_version
  end
  
  Dado(/^el[ae] ?digita no campo o modelo e versão de sua preferência$/) do
    @pages.search_page.fill_with_model_and_version
  end
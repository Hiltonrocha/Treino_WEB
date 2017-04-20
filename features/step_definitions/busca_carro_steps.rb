# encoding: utf-8

Dado(/^que acesse a página de busca por veiculo$/) do
  tap_when_element_exists("* android.widget.ImageButton {contentDescription CONTAINS[c] 'Interstitial close button'}", timeout:10)
  #abacarro = query("* id:'vpi_tab_page_indicator_text'").select{|element|element["text"] == "Carro"}
  #abamoto = query("* id:'vpi_tab_page_indicator_text'").select{|element|element["text"] == "Moto"}
  #touch(abamoto,timeout:10)
end

Quando(/^faço uma busca por "([^"]*)", "([^"]*)", "([^"]*)"$/) do |marca, modelo, versao|
  tap_when_element_exists("* id:'search_title'{text CONTAINS 'Marca'}",timeout:140)
  tap_when_element_exists("* id:'name_text'{text CONTAINS #{marca}}",timeout:100, timeoutmessage:"TIMEOUT ESTORADO")
  tap_when_element_exists("* id:'search_title' index:1")
  enter_text("* id:'search_src_text'", modelo)
  system("adb shell input keyevent KEYCODE_ENTER") 
  tap_when_element_exists("* android.widget.TextView{text CONTAINS #{modelo}}",timeout:140)
  tap_when_element_exists("* id:'search_title' index:3", timeout:10)
  tap_when_element_exists("* id:'activity_single_selection_row_title'{text CONTAINS[c] '#{versao}'}", timeout:10)
  touch("* id:'search_form_confirm'")
  sleep 5
end

Então(/^deve ser exibido os veiculos referentes a minha busca$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
require 'application_system_test_case'

class Exercise2Test < ApplicationSystemTestCase
  test 'Exercise 2: Search by price' do
    visit root_path

    choose('Abaixo de R$5,00')
    click_button 'Aplicar Filtros'

    assert_selector 'h4', text: 'Celeste'
    assert_selector 'h4', text: 'Resident Evil 2 Remake'
  end

  test 'Exercise 2: Shareable URL' do
    visit root_path(price: '5')

    assert_checked_field('Abaixo de R$5,00')
    assert_selector 'h4', text: 'Celeste'
    assert_selector 'h4', text: 'Resident Evil 2 Remake'
  end

  test 'Exercise 2: Update URL' do
    visit root_path

    choose('Abaixo de R$10,00')
    click_button 'Aplicar Filtros'

    assert_current_path(/\?price=10/)
  end

  test 'Exercise 2: Keep previous query' do
    visit root_path

    fill_in 'Buscar jogo ou palavra-chave', with: 'fi'
    click_button 'Buscar'

    assert_text '2 resultados'
    assert_selector 'h4', text: 'Fire Emblem: Three Houses'
    assert_selector 'h4', text: 'Final Fantasy VII Remake'

    choose('Abaixo de R$5,00')
    click_button 'Aplicar Filtros'

    assert_text '1 resultados'
    assert_selector 'h4', text: 'Fire Emblem: Three Houses'
  end
end

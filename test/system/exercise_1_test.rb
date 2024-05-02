require 'application_system_test_case'

class Exercise1Test < ApplicationSystemTestCase
  test 'Exercise 1: Partial search' do
    visit root_path

    fill_in 'Buscar jogo ou palavra-chave', with: 'fi'
    click_button 'Buscar'

    assert_text '2 resultados'
    assert_selector 'h4', text: 'Fire Emblem: Three Houses'
    assert_selector 'h4', text: 'Final Fantasy VII Remake'
  end

  test 'Exercise 1: Update URL' do
    visit root_path

    fill_in 'Buscar jogo ou palavra-chave', with: 'fi'
    click_button 'Buscar'

    assert_current_path(/\?q=fi/)
  end

  test 'Exercise 1: Keep focus on searchbar' do
    visit root_path

    fill_in 'Buscar jogo ou palavra-chave', with: 'fi'
    click_button 'Buscar'

    assert_text '2 resultados'
    assert_equal page.active_element[:placeholder], 'Buscar jogo ou palavra-chave'
  end

  test 'Exercise 1: Navigatable' do
    visit root_path

    fill_in 'Buscar jogo ou palavra-chave', with: 'fi'
    click_button 'Buscar'

    fill_in 'Buscar jogo ou palavra-chave', with: 'red'
    click_button 'Buscar'

    assert_text '1 resultados'
    assert_selector 'h4', text: 'Red Dead Redemption 2'

    page.go_back

    assert_text '2 resultados'
    assert_selector 'h4', text: 'Fire Emblem: Three Houses'
    assert_selector 'h4', text: 'Final Fantasy VII Remake'
  end
end

Given(/^I am on the root page$/) do
    visit '/'
end

When(/^I click on the car register link$/) do
    expect(page).to have_content('Link para view Veiculo:')
    click_link('link_cardastro')
end

Then(/^I should see "Formulario de cadastro de Veiculos"$/) do
#visit(cardastro_path)
    expect(page).to have_content('Formulario de cadastro de Veiculos')
end
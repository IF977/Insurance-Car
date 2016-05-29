Given(/^I am on the root page$/) do
    visit(root_path)
end

When(/^I click on the car register link$/) do
    expect(page).to have_content('Link para view Veiculo:')
   # click_link('carro') 
end

Then(/^I should see "Formulario de cadastro de Veiculos"$/) do
    visit(cardastro_path)
    expect(page).to have_content('Formulario de cadastro de Veiculos')
end
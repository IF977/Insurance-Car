Given(/^I am on the beginning$/) do
  visit '/'
end

When(/^I click on the trailer view link$/) do
  expect(page).to have_content('Link para Registrar Reboque:')
  click_link('link_reboque') 
end

Then(/^I should see "Lista de Reboques"$/) do
  expect(page).to have_content('RBM4 inc. / WMOF Solutions / ENSN / DHG Inicio Placa Data - Hora Origem Destino Distancia Formulário de cadastro de Reboque Preencha o Formulário abaixo PLACA KM Origem Destino Distancia')
end
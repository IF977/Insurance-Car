Given(/^I am on the initial page$/) do
  visit '/'
end

When(/^I click on the payment view link$/) do
  expect(page).to have_content('Link para Registrar pagamento:')
  click_link('pagamento') 
end

Then(/^I should see "Formulario de cadastro de Pagamento"$/) do
  expect(page).to have_content('Formulario de cadastro de Pagamento')
end
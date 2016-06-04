Given(/^I am on the beginning$/) do
  visit '/'
end

When(/^I click on the trailer view link$/) do
  expect(page).to have_content('Link para Registrar Reboque:')
  click_link('link_reboque') 
end

Then(/^I should see "Lista de Reboques"$/) do
  expect(page).to have_content('Lista de Reboques')
end
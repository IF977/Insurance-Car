Given(/^I am on the index$/) do
  visit '/'
end

When(/^I click on the revision view link$/) do
  expect(page).to have_content('Link para registrar Revisoes:')
  click_link('link_revisao') 
end

Then(/^I should see "Lista de Revisoes"$/) do
  expect(page).to have_content('Lista de Revisoes')
end
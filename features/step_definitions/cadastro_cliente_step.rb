Given(/^I am on the index page$/) do
    '/public/css'
end

When(/^I click on the client view link$/) do
    click_link('link_cadastro')
end

Then(/^I should see$/) do
    expect(page).to have_content('Formulario de cadastro de clientes')
end
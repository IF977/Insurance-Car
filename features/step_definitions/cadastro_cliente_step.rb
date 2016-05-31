Given(/^I am on the index page$/) do
    visit(root_path)
end

When(/^I click on the client view link$/) do
    click_link('link_cadastro')
end

Then(/^I should see "Formulario de cadastro de clientes"$/) do
    expect(page).to have_content('Formulario de cadastro de Cliente')
end
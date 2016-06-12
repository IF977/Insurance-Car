Given(/^I am on the index page$/) do
    visit '/'
end

When(/^I click on the client view link$/) do
    click_link('link_cadastro')
end

Then(/^I should see "Formulario de cadastro de clientes"$/) do
    expect(page).to have_content('Formulario de cadastro de Cliente')
end

And(/^i fill the form with some client/) do
    @cliente = Cliente.new(cpf: "07451635481", nome: "Ricardo Barbosa Malafaia", endereco: "BDD", telefone: '34555568')
    @cliente.save
end

When(/^i go to the consult page/) do
    click_link('view_consulta')
end

Then(/^i shoul see my client's infos/) do
    expect(page).to have_content('07451635481')
end

When(/^i go to delete view link/) do
    visit('form')
end

And(/^fill the form with my client's infos/) do
    conn = ActiveRecord::Base.connection
    conn.execute %{DELETE FROM clientes WHERE cpf = '07451635481'}
    visit('consulta')
end

And(/^i should not see him in the consult/) do 
    expect(page).to have_content('Teste com sucesso de consulta dos clientes existentes')
    expect(page).not_to have_content('07451635481')

end
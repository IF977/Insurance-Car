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
   # @cliente = Cliente.new(cpf: "07451635481", nome: "Ricardo Barbosa Malafaia", endereco: "BDD", telefone: '34555568')
    page.fill_in 'cpf_form', :with => '074.516.354-81'
    page.fill_in 'name_form', :with => 'Ricardo Barbosa Malafaia'
    page.fill_in 'endereco_form', :with => 'Behavior Driven Development'
    page.fill_in 'tel_form', :with => '34555568'
    page.click_button 'submit_client'
    page.click_link('return')
    #@cliente.save
end

When(/^i go to the consult page/) do
    click_link('view_consulta')
end

Then(/^I go to the consult area/) do
    click_link('view_consulta')
end

Then(/^i shoul see my client's infos/) do
    expect(page).to have_content('Ricardo Barbosa Malafaia')
    expect(page).to have_content('Behavior Driven Development')
    expect(page).to have_content('34555568')
end

When(/^i go to delete view link/) do
    visit 'form'
end

And(/^click on the delete button/) do
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{DELETE FROM clientes WHERE cpf ='074.516.354-81'}
    visit 'form'
    click_link('return')
end

Then(/^i should not see him in the consult/) do
    expect(page).to have_content('Teste com sucesso de consulta dos clientes existentes')
    expect(page).not_to have_content('074.516.354-81')

end

And(/^There's a entry wich i want to compare/) do
    @cliente = Cliente.new(cpf: "074.516.354-81", nome: "Alpert", endereco: "BDD", telefone: 'NA')
    @cliente.save!
end

Then(/^I should see an error message/) do
    expect(page).to have_content("RBM4 inc. / WMOF Solutions / ENSN / DHG Inicio Cliente já existe, ou CPF digitado é inválido. Clique aqui para voltar")
end

And(/^i fill the form with some existing client/) do 
    page.fill_in 'cpf_form', :with => '074.516.354-81'
    page.fill_in 'name_form', :with => 'Alpert'
    page.fill_in 'endereco_form', :with => 'BDD'
    page.fill_in 'tel_form', :with => 'NA'
    page.click_button 'submit_client'
end
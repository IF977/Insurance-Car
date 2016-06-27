Given(/^I am on the index$/) do
  visit '/'
end

When(/^I click on the revision view link$/) do
  expect(page).to have_content('Link para registrar Revisoes:')
  click_link('link_revisao') 
end

Then(/^I should see "Lista de Revisoes"$/) do
  expect(page).to have_content('RBM4 inc. / WMOF Solutions / ENSN / DHG Inicio Listando Revisões: Placa Autorização N° da Revisão Detalhes Deletar FIG-9897 Sim 4 Detalhes Delete Formulário de cadastro de Revisão KM Relatorio Autorização Sim Nao')
end

And(/^theres a entry wich i want to see/) do
  @revisao = Revisao.new(placa: "FIG-9897", n_rev: "<font color='red'><b>4</font></b>", autorizacao: "Sim", relatorio: 'Behaviour Driven Development')
  @revisao.save!
end

And (/^i shoul see a red numbered entry/) do
  expect(page).to have_content("4")
end
And (/^I click in the details link/) do
  click_link('detalhes')
end

Then (/^I should see the detailed information of the revision/) do
  expect(page).to have_content("RBM4 inc. / WMOF Solutions / ENSN / DHG Inicio Detalhes da revisao PLACA:FIG-9897 KILOMETRAGEM: AUTORIZAÇÃO: Sim RELATORIO: Behaviour Driven Development Clique aqui para voltar")
end
Feature: Cadastrar revisao dos carros dos clientes
  As a Owner
  In order to manage my client's cars revisions
  I want to register a new revision
  
 Scenario: Cadastro de Revisões dos carros de clientes
   Given I am on the index
   When I click on the revision view link
   Then I should see "Lista de Revisoes"
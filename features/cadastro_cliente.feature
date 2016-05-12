Feature: Cadastrar clientes
  As a User
  In order to manage my clients 
  I want to register a new client
  
 Scenario: Index 
   Given I am on the index page
   When I click on the client view link
   Then I should see "Formulario de cadastro de clientes"
Feature: Cadastrar Carros
  As a user
  In order to manage my clients cars
  I want to register a new car and allocate it to a owner
  
 Scenario: Cadastro de carros
   Given I am on the root page
   When I click on the car register link
   Then I should see "Formulario de cadastro de Veiculos"
 
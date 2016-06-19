Feature: Cadastrar clientes
  As a User
  In order to manage my clients 
  I want to register a new client
  
 Scenario: Cadastro de clientes
   Given I am on the index page
   When I click on the client view link
   Then I should see "Formulario de cadastro de clientes"
   And i fill the form with some client
   When i go to the consult page
   Then i shoul see my client's infos
   
  Scenario: Exclusão de clientes
    Given I am on the index page
    When I click on the client view link
    And i fill the form with some client
    Then I go to the consult area
    And i shoul see my client's infos
    When i go to delete view link
    And click on the delete button
    Then i should not see him in the consult
  
  Scenario: Cadastrar cliente existentes
    Given I am on the index page
    And There's a entry wich i want to compare
    When I click on the client view link
    And i fill the form with some existing client
    Then I should see an error message
    
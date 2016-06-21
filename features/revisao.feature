Feature: Cadastrar revisao dos carros dos clientes
  As a Owner
  In order to manage my client's cars revisions
  I want to register a new revision
  
 Scenario: Cadastro de Revisões dos carros de clientes
   Given I am on the index
   And theres a entry wich i want to see
   When I click on the revision view link
   Then I should see "Lista de Revisoes"
   And i shoul see a red numbered entry
  Scenario: Verificar detalhes de uma revisao
    Given I am on the index
    And theres a entry wich i want to see
    When I click on the revision view link
    And I click in the details link
    Then I should see the detailed information of the revision
   
  
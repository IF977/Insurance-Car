Feature: Cadastrar pagamento de clientes
  As a Owner
  In order to manage my client's payments
  I want to register a new payment
  
 Scenario: Cadastro de Pagamento de clientes
   Given I am on the initial page
   When I click on the payment view link
   Then I should see "Formulario de cadastro de Pagamento"
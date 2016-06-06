Rails.application.routes.draw do
  get 'reboque/cadreb' => 'reboque#cadreb'
  get 'revisao/cadrev' => 'revisao#cadrev'
  get 'pagamento/pagreg' => 'pagamento#registrar'
  get 'cliente/cadastro' => 'cliente#cadastrar'
  root 'index#index'
  get 'carro/cardastro' => 'carro#cardastrar'
  # <get / post / delete> `/nome da rota` => `controller#metodo`
end

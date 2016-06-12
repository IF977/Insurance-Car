Rails.application.routes.draw do
  get 'reboque/cadreb' => 'reboque#cadreb'
  get 'revisao/cadrev' => 'revisao#cadrev'
  get 'pagamento/pagreg' => 'pagamento#registrar'
  get 'cliente/cadastro' => 'cliente#cadastrar'
  root 'index#index'
  get 'carro/cardastro' => 'carro#cardastrar'
  get 'carro/index' => 'root_path'
  get 'carro/consulta' => 'carro#consulta'
  post 'carro/cardastro' => 'carro#input'
  post 'cliente/cadastro' => 'cliente#clientnew'
  get 'cliente/consulta' => 'cliente#consulta'
  resources :carro
  # <get / post / delete> `/nome da rota` => `controller#metodo`
end

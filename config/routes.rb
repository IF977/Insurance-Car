Rails.application.routes.draw do
  get 'cliente/form' => 'cliente#form'
  post 'cliente/form' => 'cliente#update'
  delete 'cliente/updateform' => 'cliente#update'
  post 'cliente/updateform' => 'cliente#update'
  post 'cliente/consulta' => 'cliente#update'
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
  
  #post 'cliente/update' => 'cliente#update'
  resources :carro
  # <get / post / delete> `/nome da rota` => `controller#metodo`
end

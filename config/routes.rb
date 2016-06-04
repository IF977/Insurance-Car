Rails.application.routes.draw do
  get '/cadreb' => 'reboque#cadreb'
  get '/cadrev' => 'revisao#cadrev'
  get '/pagreg' => 'pagamento#registrar'
  get '/cadastro' => 'cliente#cadastrar'
  root 'index#index'
  get '/cardastro' => 'carro#cardastrar'
  # <get / post / delete> `/nome da rota` => `controller#metodo`
end

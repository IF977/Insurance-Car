Rails.application.routes.draw do
  get '/cadastro' => 'cliente#cadastrar'
  root 'index#index'
  # <get / post / delete> `/nome da rota` => `controller#metodo`
end

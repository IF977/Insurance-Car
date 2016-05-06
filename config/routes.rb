Rails.application.routes.draw do
  get 'pagamento/codigo:string'

  get 'pagamento/data:string'

  get 'pagamento/hora:string'

  get 'pagamento/valor:int'

  get 'reboque/codigo:string'

  get 'reboque/data:string'

  get 'reboque/hora:string'

  get 'reboque/km:string'

  get 'reboque/destino:string'

  get 'reboque/origem:string'

  get 'reboque/distancia:int'

  get 'veiculo/placa:string'

  get 'veiculo/marca:string'

  get 'veiculo/modelo:string'

  get 'cliente/cpf:string'

  get 'cliente/nome:string'

  get 'cliente/endereco:string'

  get 'cliente/telefone:string'

  get 'revisao/codigo:string'

  get 'revisao/data:string'

  get 'revisao/hora:string'

  get 'revisao/km:string'

  get 'revisao/relatorio:string'

  get 'revisao/autorizacao:int'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

SampleApp::Application.routes.draw do
  resources :seguidores

  resources :comentarios

  resources :configuracions

  resources :usuarios

  resources :users

  resources :pictures

  get "users/new"

  match '/signup', :to => 'users#new'
  # pages
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  match '/validar', :to => 'pages#validar', :as => 'validar'
  match '/buscar', :to => 'pages#buscar', :as => 'buscar'

  #user
  match 'timeline', :to => 'users#new', :as => 'time'
  match '@:seudo', :to => 'users#show', :as => 'user'
  match '/save', :to => 'users#save'
  match '/destroy', :to => 'users#destroy'

  # usuario
  match 'usuarios/:id/perfil', :to => 'usuarios#perfil', :as => 'perfil'
# 
  # # usuario
  # match 'usuarios/:id/perfil', :to => 'usuarios#perfil', :as => 'perfil'
  
  #fotos
    match 'perfil/new', :to => 'pictures#new', :as => 'newimages'

  
  
  # get "pages/home"

  # get "pages/contact"

  # get "pages/about"

  # get "pages/help"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home'

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
# match ':controller(/:action(/:id(.:format)))'
end

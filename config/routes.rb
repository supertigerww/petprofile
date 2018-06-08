Rails.application.routes.draw do
 
  get 'toycomments/create'

  get 'foodcomments/create'

  get 'petcomments/create'

  get '/petprofile/:petid/toys/new' => "toys#new"
  get '/petprofile/toys' => "toys#all"
  post '/toys' =>"toys#create"
  get '/petprofile/toys/:toyid' => "toys#show"

  get '/petprofile/:petid/food/new' => "foods#new"
  post '/foods' =>"foods#create"
  get '/petprofile/foods/:foodid' => "foods#show"

  get '/petprofile' => "users#new"
  post '/users' => "users#create"
  get '/petprofile/users/:userid' => "users#show"

  get '/petprofile/:petid/blog/new' => "petposts#new"
  post '/petposts' => "petposts#create"

  post "/sessions" => "sessions#create"
  delete "/sessions/:session_id" => "sessions#destroy"

  get '/petprofile/home' => "pets#home"
  get '/petprofile/new' => "pets#new"
  get '/petprofile/pets/:petid' => "pets#show"
  post '/pets' => "pets#create"

  post '/petcomments' => "petcomments#create"

  post '/foodcomments'=> "foodcomments#create"

  post '/toycomments' => "toycomments#create"
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

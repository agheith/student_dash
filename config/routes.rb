Rails.application.routes.draw do
    resources :dojos do
        resources :students
    end

  # get '/dojos' => 'dojos#index'
  #
  # get '/dojos/:id/edit' => 'dojos#edit'
  #
  # get '/dojos/new' => 'dojos#new'
  #
  # get '/dojos/:id' => 'dojos#show'
  #
  # post '/dojos' => 'dojos#create'
  #
  # put '/dojos/:id' => 'dojos#update'
  #
  # delete '/dojos/:id' => 'dojos#destroy'

  ###################### STUDENTS ROUTES ####################

  # get '/dojos/:dojo_id/students/new' => 'students#new'
  #
  # get '/dojos/:dojo_id/students/:id/edit' => 'students#edit'
  #
  # get '/dojos/:dojo_id/students/:id' => 'students#show'
  #
  # post '/dojos/:dojo_id/students' => 'students#create'
  #
  # put '/dojos/:dojo_id/students/:id' => 'students#update'
  #
  # delete '/dojos/:dojo_id/students/:id' => 'students#destroy'




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

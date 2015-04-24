Rails.application.routes.draw do


  devise_for :users
  get "/test/*path" => "static#index"
  root 'static#index'

  resources :centres
  resources :courts
  resources :challenges

  # get '/test/landing' => 'static#index', as: 'landing'

  get '/test/search' => 'static#search'

  get '/test/home' => 'static#index', as: 'home'

  get 'users/get_all_users' => 'users#get_all_users'

  put 'courts/book_a_court/:id' => 'courts#book_a_court'

  get 'users/current_user_profile' => 'users#current_user_profile'
  
  put 'challenges/challenge_opponent/:id' => 'challenges#challenge_opponent' 

  put 'challenges/challenge_accepted/:id' => 'challenges#challenge_accepted'

  get 'users/user_profile/:id' => 'users#user_profile'

  get 'users/new_profile' => 'users#new_profile'

  get 'users/phone_profile' => 'users#phone_profile'

  get 'users/all_users' => 'users#all_users'

  put 'users/log_win/:id' => 'users#log_win'

  put 'users/log_loss/:id' => 'users#log_loss'

  put 'users/log_opponent_loss/:id' => 'users#log_opponent_loss'

  put 'users/log_opponent_win/:id' => 'users#log_opponent_win'

  put 'users/new_user_elo/:id' => 'users#new_user_elo'

  put 'users/new_opponent_elo/:id' => 'users#new_opponent_elo'

  delete 'challenges/end_challenge/:id' => 'challenges#end_challenge'

  get 'users/match' => 'users#match'


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

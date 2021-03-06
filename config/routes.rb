Rails.application.routes.draw do
  resources :startup_maps do
    member do
      post :map
    end
  end

  get 'map/index'
  # get 'startup_on_map', to: 'startups#startup_on_map'
  resources :messages
  resources :payments, only: :create
  resources :premium_listings
  get 'relationships/create'

  get 'relationships/destroy'

  root 'home#index'
  resources :enquiries
  get 'contact', to: 'contact#index'

  resources :reviews
  resources :categories
  resources :locations
  get 'maps', to: 'maps#index'

  resources :answers do
    member do
      get :upvote
      get :downvote
    end
  end
  resources :questions do
    member do
      get :upvote
      get :downvote
    end
  end
  get 'admin', to: 'admin#index'

  resources :startups do
    member do
      get :join
      delete :leave
    end
  end
  resources :events
  resources :profiles
  devise_for :users #, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  # get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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

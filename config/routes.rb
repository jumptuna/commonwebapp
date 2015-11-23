Rails.application.routes.draw do
  get "signup" => "pages#signup", as: "signup"
   get "signin" => "pages#signin", as: "signin"
   get "home" => "pages#home", as: "home"
   get "list" => "pages#list", as: "list"
   get "attemptlogin" => "pages#attemptlogin", as: "attempt"
   get "profile" => "pages#profile", as: "profile"
   get "aftersignin" => "users/sessions#signin", as: "after_signin"
   get "viewuser/(:id)" => "pages#viewuser", as: "viewuser"
   get "signout" => "pages#signout", as: "signout"
   get "gobacktoprofile" => "pages#currentuser", as: "cu"
   get "eventspage" => "pages#events", as: "events"

   root to: "pages#home"
  devise_for :users, controllers: { sessions: "users/sessions", registrations: 'users/registrations' }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routested with "root"
  # root 'welcome#index'

  # Example of re gular route:
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

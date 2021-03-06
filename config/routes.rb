Testlog::Application.routes.draw do


resources :password_resets


resources :user_sessions
resources :users

get '/calls/data' => 'calls#data'
get '/customer/data' => 'customer#data'
get '/company/data' => 'company#data'

resources :checkout
resources :part_detail
resources :demo_inventory

 resources :company
  resources :customer
  resources :calls

  resources :employee
  resources :account_assignment
resources :category
resources :category_hint
resources :supportlink



  get "user_sessions/new"

  get "user_sessions/create"

  get "user_sessions/destroy"

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  match 'customer' => 'customer#index'
  match 'customer/update' => 'customer#update'
  match 'customer/destroy' => 'customer#destroy'

  match '/supportcenter' => 'welcome#index'
  match '/demo_inventory' => 'DemoInventory#index'
  match '/demo_inventory/new' => 'DemoInventory#new'
  match '/demo_inventory/edit' => 'DemoInventory#edit'
  match '/demo_inventory/info/:id' => 'DemoInventory#info'

  match '/checkout/new' => 'Checkout#new'
  match '/checkout/return' => 'Checkout#return'
  match '/checkout/edit' => 'Checkout#edit'

    #match 'admin/categories' => 'admin#categories'

    match '/part_detail/info/:id' => 'part_detail#info'
    match '/part_detail/import' => 'part_detail#import'

    match '/account_assignment/import' => 'account_assignment#import'
    match '/employee/import' => 'employee#import'
    match 'employee/destroy' => 'employee#destroy'


  match 'category/destroy' => 'category#destroy'
  match 'category/merge' => 'category#merge'

   match 'admin/events' => 'admin#events'
  match 'event/destroy' => 'event#destroy'

  match 'admin/category_hints' => 'admin#category_hints'
  match 'category_hint/destroy' => 'category_hint#destroy'

   match 'admin/supportlinks' => 'admin#supportlinks'
   match 'supportlink/destroy' => 'supportlink#destroy'
   match 'supportlink/moveup' => 'supportlink#moveup'
   match 'supportlink/movedown' => 'supportlink#movedown'

match 'calls/new/:id' => 'calls#new'
match 'calls/listinfo/:id' => 'calls#listinfo'
match 'calls/update/:id' => 'calls#update'
match 'calls/history/:id' => 'calls#history'

match 'category/hints/:id' => 'category#hints'

get 'search', to: 'search#search'
#get '/search' => 'search#index'



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
  root :to => 'welcome#index' , :as => :root

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

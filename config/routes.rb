ActionController::Routing::Routes.draw do |map|
  map.resources :users, :sessions, :roles, :product_recommendations
  map.resources :products
  map.resources :categories, :has_many => :products
  map.resources :carts, :has_many => :cart_items
  map.resources :cart_items, :has_many => :products
  
  # User routes
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.forgot_password '/forgot_password', :controller => 'users', :action => 'forgot_password'
  map.reset_password '/reset_password/:id', :controller => 'users', :action => 'reset_password'
  map.change_password '/change_password', :controller => 'users', :action => 'change_password'
  map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate'
  
  map.search '/search', :controller => 'products', :action => 'search'
  map.namespace :admin do |admin|
    admin.resources :categories,  :product_recommendations, :roles, :users, :photos, :config_values
    admin.resources :products, :has_many => :photos
  end
  # The priority is based upon order of creation: first created -> highest priority.
    
  # Sample of regular route:
  # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  # map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # You can have the root of your site routed by hooking up '' 
  # -- just remember to delete public/index.html.
  map.connect '', :controller => "public", :action => 'home'

  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'
  map.connect ':controller/service.wsdl', :action => 'wsdl'

  # Install the default route as the lowest priority.
  map.connect ':controller/:action.:format'
  map.connect ':controller/:action/:id.:format'
  map.connect ':controller/:action/:id'
end

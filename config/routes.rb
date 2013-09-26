Spatialy::Application.routes.draw do

  root :to => 'views#index', :as => 'home'

  #######################
  ### ARCHITECT ROUTES ###
  #######################

  get '/architects/:id/edit' => 'architects#edit', :as => 'architect_edit'
  get '/architects/new' => 'architects#new', :as => 'architect_new'
  get 'architects/:id' => 'architects#show', :as => 'architect'
  post '/architects/:id/delete' => 'architects#destroy', :as => 'architect_delete'
  post 'architects/:id' => 'architects#update'
  get '/architects/' => 'architects#index', :as => 'architect_home'

  resources :architects
  # get /architects             architects#index
  # post /architects              architects#create
  # get /architects/new          architects#new
  # get /architects/:id/edit     architects#edit
  # get /architects/:id          architects#show
  # put /architects/:id          architects#update
  # post /architects/:id          architects#destroy

  #####################
  ### BUILDING ROUTES ###
  #####################

  get '/buildings/:id/edit' => 'buildings#edit', :as => 'building_edit'
  get '/buildings/new' => 'buildings#new', :as => 'building_new'
  get 'buildings/:id' => 'buildings#show', :as => 'building'
  post '/buildings/:id/delete' => 'buildings#destroy', :as => 'building_delete'
  post 'buildings/:id' => 'buildings#update'
  get '/buildings/' => 'buildings#index', :as => 'building_home'

  resources :buildings
  # get /buildings             buildings#index
  # post /buildings              buildings#create
  # get /buildings/new          buildings#new
  # get /buildings/:id/edit     buildings#edit
  # get /buildings/:id          buildings#show
  # put /buildings/:id          buildings#update
  # post /buildings/:id          buildings#destroy

  #################
  ### CITY ROUTES ###
  #################

  get '/cities/:id/edit' => 'cities#edit', :as => 'city_edit'
  get '/cities/new' => 'cities#new', :as => 'city_new'
  get 'cities/:id' => 'cities#show', :as => 'city'
  post '/cities/:id/delete' => 'cities#destroy', :as => 'city_delete'
  post 'cities/:id' => 'cities#update'
  get '/cities/' => 'cities#index', :as => 'city_home'

    resources :cities
  # get /cities             cities#index
  # post /cities              cities#create
  # get /cities/new          cities#new
  # get /cities/:id/edit     cities#edit
  # get /cities/:id          cities#show
  # put /cities/:id          cities#update
  # post /cities/:id          cities#destroy

  #################
  ### USER ROUTES ###
  #################

  resources :users
  # get /users             users#index
  # post /users              users#create
  # get /users/new          users#new
  # get /users/:id/edit     users#edit
  # get /users/:id          users#show
  # put /users/:id          users#update
  # post /users/:id          users#destroy

  #################
  ### VIEW ROUTES ###
  #################

  get '/admin' => 'views#admin', :as => 'admin'
  get '/views/index' => 'views#index'
  get '/views/buildings' => 'views#buildings'
  get '/views/architects' => 'views#architects'
  get '/views/cities' => 'views#cities'

  ####################
  ### TWITTER ROUTES ###
  ####################

  get '/sessions/create', :to => 'sessions#create'
  get '/auth/:provider/callback', :to => "sessions#create"
  delete '/logout', :to => 'sessions#destroy', :as => 'logout'

 ################
 ### 404 ROUTE ###
 ################

  match "*path", :to => "application#routing_error"

end

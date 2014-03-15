Quizbowl::Application.routes.draw do

  root 'home#index'									#uses homes_controller to render the home page

  resources :users
  resources :games
  resources :sessions
  resources :provides
  resources :players

  get "/lobbys/" => "lobbys#view_games", as: 'show_lobbys'

  get "/logout" => "sessions#destroy", as: 'logout'

  get "/waiting/:provide_id" => "games#waiting", as: 'waiting_area'

  post "/results/:id" => "results#track_results", as: 'update_results'

  #patch '/provides/:id', to: 'provides#start_game', as: 'start_game'

  #post "/join/:provide_id" => "games#join_game", as: 'join_game'
  
  #get "/logout" => "sessions#destroy", as: 'logout'

=begin
  ############## USER ROUTES ###############
  #CREATE
  get "/users/new" => 'users#signup'						#render the form for a user to signup
  post "/users" => 'users#create'							#create the user in database from the form

  #READ
  get "/users" => 'users#profile'							#show user their profile

  #UPDATE
  get "/users/edit/:user_id" => 'users#edit'				#allow user to edit their profile
  patch "/users/:user_id" => 'users#update'				#rendered upon editing profile

  #DELETE
  delete "/users/:user_id" => 'users#delete_account' 		#allow user to delete their account

  ############## HOSTS ROUTES ###############
  #CREATE
  get "/hosts/new" => 'hosts#signup'            #render the form for a user to signup
  post "/hosts" => 'hosts#create'             #create the user in database from the form

  #READ
  get "/hosts" => 'hosts#profile'             #show user their profile

  #UPDATE
  get "/hosts/edit/:user_id" => 'hosts#edit'        #allow user to edit their profile
  patch "/hosts/:user_id" => 'hosts#update'       #rendered upon editing profile

  #DELETE
  delete "/hosts/:user_id" => 'hosts#delete_account'    #allow user to delete their account
=end

end


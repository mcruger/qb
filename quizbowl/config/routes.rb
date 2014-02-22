Quizbowl::Application.routes.draw do

  root 'home#index'									#uses homes_controller to render the home page


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
  

end


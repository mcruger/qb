Quizbowl::Application.routes.draw do

  root 'home#index'									#uses homes_controller to render the home page


  ############## USER ROUTES ###############
  #CREATE
  get "/user/new" => 'user#signup'						#render the form for a user to signup
  post "/user" => 'user#create'							#create the user in database from the form

  #READ
  get "/user" => 'user#profile'							#show user their profile

  #UPDATE
  get "/user/edit/:user_id" => 'user#edit'				#allow user to edit their profile
  patch "/user/:user_id" => 'user#update'				#rendered upon editing profile

  #DELETE
  delete "/user/:user_id" => 'user#delete_account' 		#allow user to delete their account
  

end


class UsersController < ApplicationController

	#render the main page, i.e. home
	#if logged show options, otherwise show main page
	def index
 		@users = User.all.order("username asc")
	end

	#render the page allowing a user to sign up, check to make sure user is not logged in
	def new
		
	end

	#create the user in database from the form
	def create
		u = User.new
		u.username = params["username"]
    	u.first = params["first"]
    	u.last = params["last"]
    	u.sex = params["sex"]
    	u.email = params["email"]
    	u.city = params["city"]
    	u.state = params["state"]
    	u.zip = params["zip"]
    	u.password = params["password"]
        u.password_confirmation = params["password_confirmation"]
    	u.age = params["age"]
    	u.ranking = params["ranking"]
    	u.high_score = params["high_score"]
    	u.save

    	@user = User.find_by :username => u.username
    	redirect_to show_lobby_url #make login go away and say welcome
	end


	#show user their profile
	def show
		the_user_id = params["id"]
		puts the_user_id
    	@user = User.find_by :id => the_user_id
	end


	#allow user to edit their profile
	def edit
		the_user_id = params["id"]
    	@user = User.find_by(:id => the_user_id)
	end


	#rendered upon editing profile
	def update
		the_user_id = params["id"]
    	u = User.find_by(:id => the_user_id)
    	u.username = params["username"]
    	u.first = params["first"]
    	u.last = params["last"]
    	u.sex = params["sex"]
    	u.email = params["email"]
    	u.city = params["city"]
    	u.state = params["state"]
    	u.zip = params["zip"]
    	u.password = params["password"]
    	u.age = params["age"]
    	u.ranking = params["ranking"]
    	u.high_score = params["high_score"]
    	u.save
    	redirect_to users_url
	end


	#allow user to delete their account
	def destroy
		the_user_id = params["id"]
    	user = User.find_by(:id => the_user_id)
    	user.destroy
    	redirect_to 'home#index'
	end



end
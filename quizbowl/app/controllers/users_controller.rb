class UsersController < ApplicationController

	#render the main page, i.e. home
	#if logged show options, otherwise show main page
	def index
 		@users = User.all.order("username asc")
	end

	#render the page allowing a user to sign up, check to make sure user is not logged in
	def new
		redirect_to users_url
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
    	u.age = params["age"]
    	u.ranking = params["ranking"]
    	u.top_score = params["top_score"]
    	u.save
    	redirect_to users_url
	end


	#show user their profile
	def show
		the_user_id = params["id"]
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
    	u = Host.find_by(:id => the_user_id)
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
    	u.top_score = params["top_score"]
    	u.save
    	redirect_to users_url
	end


	#allow user to delete their account
	def destroy
		the_user_id = params["id"]
    	user = User.find_by(:id => the_user_id)
    	user.destroy
    	redirect_to user_url
	end



end
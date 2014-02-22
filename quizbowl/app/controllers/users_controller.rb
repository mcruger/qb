class UsersController < ApplicationController

	#render the form for a user to signup
	def signup
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
    	redirect_to "/users"
	end


	#show user their profile
	def profile
	end


	#allow user to edit their profile
	def edit
	end


	#rendered upon editing profile
	def update
	end


	#allow user to delete their account
	def delete_account
	end

end
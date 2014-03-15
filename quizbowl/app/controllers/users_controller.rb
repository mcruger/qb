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
		user = User.new
		user.username = params["username"]
    	user.first = params["first"]
    	user.last = params["last"]
    	user.sex = params["sex"]
    	user.email = params["email"]
        user.add_l1 = params["add_l1"]
    	user.city = params["city"]
    	user.state = params["state"]
    	user.zip = params["zip"]
    	user.password = params["password"]
        user.password_confirmation = params["password_confirmation"]
    	user.age = params["age"]
        user.phone = params["phone"]
    	user.ranking = params["ranking"]
    	user.high_score = 0
    	user.save

        if user.save
            session[:user_id] = user.id
            session[:username] = user.username
            @user = User.find_by :username => user.username
            UserMailer.welcome_email(@user).deliver
            redirect_to show_lobbys_url
        else
            flash.now[:error] = "Profile not created successfully.  Please try again."
            render new_user_path
        end
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
    	user = User.find_by(:id => the_user_id)
    	user.first = params["first"]
    	user.last = params["last"]
    	user.email = params["email"]
        user.phone = params["phone"]
        user.add_l1 = params["add1"]
    	user.city = params["city"]
    	user.state = params["state"]
    	user.zip = params["zip"]
    	user.age = params["age"]
    	user.save
    	redirect_to show_lobbys_url
	end


	#allow user to delete their account
	def destroy
		the_user_id = params["id"]
    	user = User.find_by(:id => the_user_id)
    	user.destroy
        session.destroy
    	redirect_to root_url
	end



end
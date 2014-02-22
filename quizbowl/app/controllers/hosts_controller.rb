class HostsController < ApplicationController

	#render the form for a user to signup
	def signup
	end


	#create the user in database from the form
	def create
		h = Host.new
		h.hostname = params["hostname"]
    	h.primarycontactname = params["primarycontactname"]
    	h.hosttype = params["hosttype"]
    	h.email = params["email"]
    	h.staddress1 = params["staddress1"]
    	h.staddress2 = params["staddress2"]
    	h.city = params["city"]
    	h.state = params["state"]
    	h.zip = params["zip"]
    	h.phone = params["phone"]
    	h.gamescount = params["gamescount"]
    	h.password = params["password"]
    	h.save
    	redirect_to "/hosts"
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
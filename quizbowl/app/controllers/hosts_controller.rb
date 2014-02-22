class HostsController < ApplicationController

	#render the main page, i.e. home
	#if logged show options, otherwise show main page
	def index
 		@hosts = Host.all.order("hostname asc")
	end

	#render the page allowing a user to sign up, check to make sure user is not logged in
	def new
		redirect_to hosts_url
	end

	#create the user in database from the form
	def create
		host = Host.new
		host.hostname = params["hostname"]
    	host.primarycontactname = params["primarycontactname"]
    	host.hosttype = params["hosttype"]
    	host.email = params["email"]
    	host.staddress1 = params["staddress1"]
    	host.staddress2 = params["staddress2"]
    	host.city = params["city"]
    	host.state = params["state"]
    	host.zip = params["zip"]
    	host.phone = params["phone"]
    	host.gamescount = params["gamescount"]
    	host.password = params["password"]
    	host.save
    	redirect_to hosts_url
	end


	#show user their profile
	def show
		the_host_id = params["id"]
    	@host = Host.find_by :id => the_host_id
	end


	#allow user to edit their profile
	def edit
		the_host_id = params["id"]
    	@host = Host.find_by(:id => the_host_id)
	end


	#rendered upon editing profile
	def update
		the_host_id = params["id"]
    	host = Host.find_by(:id => the_host_id)
    	host.hostname = params["hostname"]
    	host.primarycontactname = params["primarycontactname"]
    	host.hosttype = params["hosttype"]
    	host.email = params["email"]
    	host.staddress1 = params["staddress1"]
    	host.staddress2 = params["staddress2"]
    	host.city = params["city"]
    	host.state = params["state"]
    	host.zip = params["zip"]
    	host.phone = params["phone"]
    	host.gamescount = params["gamescount"]
    	host.password = params["password"]
    	host.save
    	redirect_to hosts_url
	end


	#allow user to delete their account
	def destroy
		the_host_id = params["id"]
    	host = Host.find_by(:id => the_host_id)
    	host.destroy
    	redirect_to hosts_url
	end



end
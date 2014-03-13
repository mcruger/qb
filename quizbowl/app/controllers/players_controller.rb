class PlayersController < ApplicationController

	def index
		
	end


	def new

	end


	def create
		#create a new game in db
		provide_id = params["provide_id"]
		user_id = params["user_id"]
    	p = Player.new
		p.user_id = user_id
		p.provide_id = provide_id    	
    	p.save
    	redirect_to "/provides/"+provide_id
	end


	def edit



	end



	def update


	end


	def destroy

	end

end
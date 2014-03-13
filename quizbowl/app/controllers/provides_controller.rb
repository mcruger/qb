class ProvidesController < ApplicationController

	def index
		
	end


	def new

	end


	def create
		#create a new game in db

	end


	def edit



	end



	def update
		#update provided games
		
		provide_id = params["id"]
    	p = Provide.find_by(:id => provide_id)
		p.game_running = 1   	
    	p.save
    	redirect_to "/waiting/"+provide_id

	end

	def destroy

	end

end
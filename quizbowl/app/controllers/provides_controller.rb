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
		p.game_playing = 1   	
    	p.save
    	redirect_to show_lobbys_url

	end


	def destroy

	end

end
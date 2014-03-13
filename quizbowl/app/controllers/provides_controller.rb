class ProvidesController < ApplicationController

	def index
		
	end


	def new

	end


	def create
		#create a new game in db

	end

	def show

		provide_id = params["id"]
    	@Game = Game.joins(:provides).where("provides.id = ?", provide_id )

		@questions = Question.includes(:answers).where("game_id = ?", @Game[0].id)


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
class GamesController < ApplicationController

	def index
		#displays all available games
		@games = Game.all

	end



	def new

	end



	def create
		#create a new game in db

	end



	def show
		#the_game_id = params["id"]
    	#@game = Game.find_by :id => the_game_id

  #   	if @game.started == 1
		@questions = Question.includes(:answers).where("game_id = ?", 1)
		# else 
			#render waiting_area_url
		# end
		#render 'show2' 
	end

	def waiting
		the_game_id = params["id"]
    	@game = Game.find_by(:id => the_game_id)	
    	puts @game.id
	end


	def edit

	end



	def update
	
	end



	def destroy

	end

end
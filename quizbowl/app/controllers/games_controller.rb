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
		the_game_id = params["id"]
    	@game = Game.find_by :id => the_game_id

  		#if @game.started == 1
		@questions = Question.includes(:answers).where("game_id = ?", 1)
		# else 
			#render waiting_area_url
		# end

	end

	def waiting

   		provide_id = params["provide_id"]

   		#get game and user details for the provided game
   		@Game = Game.joins(:provides).where("provides.id = ?", provide_id )
    	@provider = User.joins(:provides).where("provides.id = ?", provide_id )

    	#get the users who are playing the game 
   		@players = User.includes(players: :provide).where("provides.id = ?", 1 )

    	render 'waiting'


	end


	def edit

	end



	def update
	
	end



	def destroy

	end

end
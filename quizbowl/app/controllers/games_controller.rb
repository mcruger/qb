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
		provide_id = params["provide_id"]
    	@Game = Game.joins(:provides).where("provides.id = ?", provide_id )

  		#if @game.started == 1
		@questions = Question.includes(:answers).where("game_id = ?", @Game[0].id)
		# else 
			#render waiting_area_url
		# end

	end

	def waiting

   		provide_id = params["provide_id"]

   		@user_id = session[:user_id];

   		#get game and user details for the provided game
   		@Game = Game.joins(:provides).where("provides.id = ?", provide_id )
    	@provider = User.joins(:provides).where("provides.id = ?", provide_id )

    	#get the users who are playing the game 
   		@players = User.includes(players: :provide).where("provides.id = ?", provide_id )

   		#pass without querying provides table
   		@p_id = provide_id

    	render 'waiting'


	end


	def edit

	end



	def update
	
	end



	def destroy

	end

end
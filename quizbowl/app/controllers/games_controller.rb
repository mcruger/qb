class GamesController < ApplicationController

	def index
		#displays all available games
		@games = Game.all
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

	def high_scores

		#high scores for all players
		@high_scores = User.find(:all, :order => "high_score desc", :limit => 50)
	end

	def new
	end

	def create
	end

	def show
	end

	def edit

	end



	def update
	
	end



	def destroy

	end

end
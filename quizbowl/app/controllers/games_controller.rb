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
		the_game_id = params["game_id"]

    	#@game = Game.find_by :id => the_game_id	

    	##@players = Player.all.where("game_id = 1")

    	#user_ids = ""
    	#@players.each do |p|
    	#	user_ids += p.user_id.to_s() + ","	
    	#end

    	#@users = User.all.where("id IN("+user_ids[0...-1]+")")
    	#puts @game

    	#@Game = Game.includes(:users).where("id = ?", 1)
    	@Games = Game.includes(provides: :user).where(games: { id: 1 })

    	render 'waiting2'


	end


	def edit

	end



	def update
	
	end



	def destroy

	end

end
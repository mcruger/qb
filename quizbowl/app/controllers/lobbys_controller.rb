class LobbysController < ApplicationController

	def view_games

		if params["search"].blank?

			#@games = Game.includes(:users).all
			#@games = Game.includes(provides: :user).where(games: { id: 1 })
			@games = Game.includes(provides: :user)
			
		else

			#@games = Game.includes(provides: :user).where()
			@games = Game.includes(:provides, :users).where("games.name like ? OR users.city like ?", "%"+params["search"]+"%", "%"+params["search"]+"%")
			@search_val = params["search"]
		end
		
	    
	end


end
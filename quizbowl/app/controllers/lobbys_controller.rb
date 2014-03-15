class LobbysController < ApplicationController

	def view_games

		if params["search"].blank?

			#@games = Game.includes(:users).all
			#@games = Game.includes(provides: :user).where(games: { id: 1 })
			@games = Game.includes(provides: :user)
			
		else
			@search_val = params["search"]
			searchL = @search_val.downcase
			#@games = Game.includes(provides: :user).where()
			@games = Game.includes(:provides, :users).where("lower(games.name) like ? OR lower(games.description) like ? OR lower(users.city) like ? OR lower(users.add_l1) like ? OR lower(users.display_name) like ?", "%"+searchL+"%", "%"+searchL+"%", "%"+searchL+"%", "%"+searchL+"%", "%"+searchL+"%")
			
		end
		
	    
	end


end
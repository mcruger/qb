class LobbysController < ApplicationController

	def view_games
		@games = Game.all.order("name asc")
	end

	

end
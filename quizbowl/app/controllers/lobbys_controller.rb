class LobbysController < ApplicationController

	def view_games
		@games = Game.includes(:users).all
		
	end


end
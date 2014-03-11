class LobbysController < ApplicationController

	def view_games
		#@games = Game.includes(:users).all
		#@games = Game.includes(provides: :user).where(games: { id: 1 })
		@games = Game.includes(provides: :user)
	
	end


end
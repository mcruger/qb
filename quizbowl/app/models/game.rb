class Game < ActiveRecord::Base
	has_many :players
	has_many :users, through: :players

	has_many :provides
	has_many :users, through: :provides
	
	has_many :questions
	belongs_to :user
	#has_many :subjects #not sure if this really should be one/many
end
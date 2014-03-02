class Game < ActiveRecord::Base
	has_many :users, through: :player
	has_many :users, through: :provide
	has_many :questions
	#has_many :subjects #not sure if this really should be one/many
end
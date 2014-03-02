class Game < ActiveRecord::Base
	has_many :users, through: :players
	has_many :users, through: :provides
	has_many :questions
	#has_many :subjects #not sure if this really should be one/many
end
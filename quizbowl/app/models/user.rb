class User < ActiveRecord::Base
	has_many :games, through: :players
end
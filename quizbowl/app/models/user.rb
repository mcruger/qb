class User < ActiveRecord::Base
	has_many :games, through: :players
	has_secure_password
end
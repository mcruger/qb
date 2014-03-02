class User < ActiveRecord::Base
	has_many :games, through: :players
	has_many :games, through: :provide
	has_one :user_type
	has_secure_password
end
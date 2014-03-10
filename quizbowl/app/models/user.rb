class User < ActiveRecord::Base
	has_many :players
	has_many :games, through: :players
	
	has_many :provides
	has_many :games, through: :provides
	
	has_one :user_type
	has_secure_password
end
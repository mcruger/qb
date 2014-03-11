class Provide < ActiveRecord::Base
	belongs_to :user
	belongs_to :game

	has_many :players
	has_many :users, through: :players
end
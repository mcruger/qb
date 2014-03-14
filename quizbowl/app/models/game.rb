class Game < ActiveRecord::Base

	has_many :provides
	has_many :users, through: :provides

	has_many :questions
	belongs_to :user

end
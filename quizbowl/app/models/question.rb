class Question < ActiveRecord::Base
	has_many :answers
	belong_to :game
	has_one :subject
end
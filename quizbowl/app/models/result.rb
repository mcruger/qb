class Result < ActiveRecord::Base
	belongs_to :provide
	belongs_to :user
end
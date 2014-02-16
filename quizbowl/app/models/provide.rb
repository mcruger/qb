class Provide < ActiveRecord::Base
	belongs_to :host
	belongs_to :game
end
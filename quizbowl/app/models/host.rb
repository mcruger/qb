class Host < ActiveRecord::Base
	has_one :host_type
	has_many :games, through: :provide
end
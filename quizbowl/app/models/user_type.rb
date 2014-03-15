Class UserType < ActiveRecord::Base

	#saving for when users can be of multiple types
	belongs_to :user
end
class User < ActiveRecord::Base
	  before_validation(on: :create) do
    	self.phone = phone.gsub(/[^0-9]/, "") if attribute_present?("phone")
  	end

  	before_validation(on: :update) do
    	self.phone = phone.gsub(/[^0-9]/, "") if attribute_present?("phone")
  	end

  	before_validation(on: :create) do
    	self.add_l1 = add_l1.gsub(/[^0-9A-Za-z\s]/, '') if attribute_present?("add_l1")
  	end

  	before_validation(on: :update) do
    	self.add_l1 = add_l1.gsub(/[^0-9A-Za-z\s]/, '') if attribute_present?("add_l1")
  	end

	  before_validation(on: :create) do
    	self.first = first.gsub(/[^A-Za-z\s]/, '').titleize if attribute_present?("first")
  	end

  	before_validation(on: :update) do
    	self.first = first.gsub(/[^A-Za-z\s]/, '').titleize if attribute_present?("first")
  	end 

  	before_validation(on: :create) do
    	self.last = last.gsub(/[^A-Za-z\s]/, '').titleize if attribute_present?("last")
  	end

  	before_validation(on: :update) do
    	self.last = last.gsub(/[^A-Za-z\s]/, '').titleize if attribute_present?("last")
  	end

  	before_validation(on: :create) do
    	self.username = username.gsub(/[^A-Za-z\s]/, '').titleize if attribute_present?("username")
  	end

  	before_validation(on: :update) do
    	self.username = username.gsub(/[^A-Za-z\s]/, '').titleize if attribute_present?("username")
  	end 	

  	validates :username, presence: true
  	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }, presence: true
  	validates :first, length: { maximum: 15 }, presence: true

  	has_many :players
  	has_many :provides, through: :players
  	
  	has_many :provides
  	has_many :games, through: :provides
  	
    has_many :results

  	has_one :user_type
  	has_secure_password
end
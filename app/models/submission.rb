class Submission < ApplicationRecord
	validates :first_name, :last_name, presence: true	
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalid email format.." }
	validates :slogan, length: { minimum: 50 }
end

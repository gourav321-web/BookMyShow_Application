class Show < ApplicationRecord
	has_many :users, through: :Bookings
end

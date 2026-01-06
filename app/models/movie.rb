class Movie < ApplicationRecord
	has_one_attached :banner_image
	has_many :bookings

	validates :title, presence: true, uniqueness: true
	validates :description presence: true
	validates :duration, presence: true
	validates :banner_image, presence: true
end

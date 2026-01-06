class User < ApplicationRecord
	has_one_attached :profile_picture
	has_secure_password
	has_many :bookings
	has_many :shows, through: :bookings

	validates :email, presence: true, uniqueness: true
	validates :name, presence: true
	validates :password_digest, presence: true
end

class User < ApplicationRecord
  has_secure_password

  has_many :bookings, dependent: :destroy

  has_one_attached :profile_picture

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password_digest, length: { minimum: 6 }
end
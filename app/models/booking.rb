class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :show

  validates :number_of_seats, numericality: { greater_than: 0 }
  validates :status, presence: true

  before_validation :calculate_total_price
  validate :check_seat_availability

  after_create :reduce_show_seats

  private

  def calculate_total_price
    self.total_price = number_of_seats * show.seat_price
  end

  def check_seat_availability
    if number_of_seats > show.available_seats
      errors.add(:number_of_seats, "exceeds available seats")
    end
  end

  def reduce_show_seats
    show.update(available_seats: show.available_seats - number_of_seats)
  end
end
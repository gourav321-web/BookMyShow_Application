class BookingsController < ApplicationController
  def new

  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @movie, notice: "ticket successfully booked"
    else
      redirect_to @movie, notice: "ticket booking failed"
    end
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_seats)
  end

end

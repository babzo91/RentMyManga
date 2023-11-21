class BookingsController < ApplicationController
  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path, notice: 'Booking créée avec succès.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Le booking a été mis à jour avec succès.'
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :duration, :status, :user, :manga)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
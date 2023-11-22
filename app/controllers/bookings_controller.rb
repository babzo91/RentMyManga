class BookingsController < ApplicationController
  def new
    @manga = Manga.find(params[:manga_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @manga = Manga.find(params[:manga_id])
    @booking.manga = @manga
    @booking.user = current_user
    if @booking.save
      redirect_to mangas_path, notice: 'Booking créée avec succès.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
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
    params.require(:booking).permit(:price, :status, :user, :manga)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end

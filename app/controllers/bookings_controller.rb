class BookingsController < ApplicationController
  before_action :set_user

  def new
    @manga = Manga.find(params[:manga_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @manga = Manga.find(params[:manga_id])
    @booking.manga = @manga
    @booking.user = current_user
    @booking.price = (@booking.end_date - @booking.start_date) * @manga.price_per_day
    if @booking.save
      redirect_to mangas_path , notice: 'Booking créée avec succès.' #TODO remplacer mangas_path par page_booking_path(@booking)
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
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user_con = current_user
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @mangas = Manga.all
  end

  def dashboard
    @bookings = Booking.all
    @booking = Booking.find(params[:id])
  end
end

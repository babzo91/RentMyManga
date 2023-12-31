class PagesController < ApplicationController
  require 'json'
  require 'open-uri'
  before_action :set_user
  skip_before_action :authenticate_user!, except: [:dashboard, :annonce]

  def home
    @mangas = Manga.all
  end

  def conditions
  end

  def confidentialites
  end

  def reservation
  end

  def legal
  end

  def faq
  end

  def annonce
    @mangas = Manga.all
    @my_manga = @mangas.where(user_id: @user)
  end

  def dashboard
  end

  private

  def set_user
    @user_con = current_user
  end
end

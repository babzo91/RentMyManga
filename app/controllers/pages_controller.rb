class PagesController < ApplicationController
  require 'json'
  require 'open-uri'
  before_action :set_user
  skip_before_action :authenticate_user!, only: [:home, :conditions, :legal, :confidentialites]

  def home
    @mangas = Manga.all
  end

  def conditions
  end

  def confidentialites
  end

  def legal
  end

  def annonce
  end

  def dashboard
  end

  private

  def set_user
    @user = current_user
  end
end

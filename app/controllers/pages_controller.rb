class PagesController < ApplicationController
  require 'json'
  require 'open-uri'
  skip_before_action :authenticate_user!, only: [:home, :conditions, :legal, :confidentialites]

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

  def annonce
  end

  def dashboard
  end
end

class PagesController < ApplicationController
  require 'json'
  require 'open-uri'
  skip_before_action :authenticate_user!, only: [:home, :conditions, :legal, :confidentialites]

  def home
    @user = current_user
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
end

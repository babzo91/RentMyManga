class PagesController < ApplicationController
  require 'json'
  require 'open-uri'
  skip_before_action :authenticate_user!, only: [:home, :show, :conditions]

  def home
    @mangas = Manga.all
  end

  def conditions
  end

  def confidentialites
  end

  def legal
  end

  def show
  end
end

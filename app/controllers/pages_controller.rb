class PagesController < ApplicationController
  def home
    @mangas = Manga.all
  end
end

class MangasController < ApplicationController
  before_action :set_manga, except: [:destroy]
  skip_before_action :authenticate_user!, :only [:show, :index]
  def index
    @mangas = mangas.all
  end

  def show
    @manga = Manga.find(params[:id])
    @bookings = @manga.bookings
  end

  def new
    @manga = mange.new
  end

  def create
    @manga = manga.new(manga_params)
    if @manga.save
      redirect_to mangas_path, notice: 'Manga créée avec succès.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @manga = Manga.find(params[:id])
  end

  def update
    if @manga.update(manga_params)
      redirect_to @manga, notice: 'Le manga a été mis à jour avec succès.'
    else
      render :edit
    end
  end

  private

  def manga_params
    params.require(:manga).permit(:title, :synopsis, :author, :category, :user)
  end

  def set_manga
    @manga = Manga.find(params[:id])
  end
end

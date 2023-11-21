class MangasController < ApplicationController
  before_action :set_manga, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @mangas = Manga.all
  end

  def show
    @bookings = @manga.bookings
  end

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.new(manga_params)
    if @manga.save
      redirect_to mangas_path, notice: 'Manga créée avec succès.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
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

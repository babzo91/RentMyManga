class MangasController < ApplicationController
  before_action :set_manga, only: [:show, :edit, :update]
  before_action :set_user
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @user = current_user
    @mangas = Manga.all
    if params[:query].present?
      @mangas = Manga.search_manga(params[:query])
    end
  end

  def show
    @user = @manga.user
    @bookings = @manga.bookings
  end

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.new(manga_params)
    @manga.user = current_user
    if @manga.save
      redirect_to manga_path(@manga), notice: 'Manga créé avec succès.'
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

  def destroy
    @manga = Manga.find(params[:id])
    @manga.destroy
    redirect_to annonce_path, status: :see_other
  end
  end

  private

  def manga_params
    params.require(:manga).permit(:title, :synopsis, :author, :category, :photo, :price_per_day)
  end

  def set_manga
    @manga = Manga.find(params[:id])
  end

  def set_user
    @user_con = current_user
  end
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @mangas = Manga.where(user_id: params[:id])
  end
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @mangas = Manga.where(user_id: params[:id])
  end

  def update
    @user_con = current_user
    if @user.update(user_params)
      redirect_to @user, notice: "Profil mis à jour avec succès."
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:avatar, :email, :first_name, :last_name, :address)
  end
end

class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end


  def show
    @book = Book.new
    @users= User.all
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id), notice: "You have updated user successfully."
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end

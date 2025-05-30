class UsersController < ApplicationController

  #(ログインユーザー以外の情報を遷移しようとした時に制限をかける)

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  

  private


  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end


end

class UsersController < ApplicationController

  #(ログインユーザー以外の情報を遷移しようとした時に制限をかける)

  def show
    @user = current_user
    @book = Book.new
    @books = @user.books.includes(:user)
  
  end

  def edit
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end
  
  def update
  end

  

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

  def ensure_current_user
    book = Book.find(params[:id])
    unless book.user == current_user
      flash[:alert] = "You are not authorized to edit this book."
      redirect_to books_path
    end
  end


end

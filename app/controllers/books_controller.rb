class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    @book.save
    redirect_to book_path
  end

  def index
    @book = Book.new
    @books = Book.all 
    @user = current_user
  end

  def show
    @user = current_user
  end
  
  def edit
  end
  
  def update
  end

  def destroy
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body,)
  end
  
end

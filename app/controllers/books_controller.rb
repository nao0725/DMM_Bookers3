class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
     redirect_to book_path
    else
      render :index
    end
  end

  def index
    @book = Book.new
    @books = Book.all 
    @user = current_user
  end

  def show
    @books = Book.all
    @user = current_user
  end
  
  def edit
  end
  
  def update
  end

  def destroy
    @book = book.find(params[:id])
    @book.destroy
    redirect_to book_path
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body,)
  end
  
end

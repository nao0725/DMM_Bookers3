class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.
      flash[:notice] = "You have created book successfully."
     redirect_to book_path(@book)
    else
      @user = current_user
      @books = Book.all
      render :index
    end
  end

  def index
    @book = Book.new
    @books = Book.all 
    @user = current_user
  end

  def show
    @book = Book.all
    @book_detail = Book.find(params[:id])
    @user = current_user
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
       flash[:notice] = "You have updated book successfully."
       redirect_to book_path
    else
       
    end
    
  end

  def destroy
    @book = book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body,)
  end
  
end

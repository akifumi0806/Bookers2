class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.new
    @user = current_user
    @books = Book.all
  end

  def edit
  end

  def destroy
  end

  def create
    @book = Book.new(book_params)
      @book.user_id = current_user.id
      @book.save!
        flash[:notice] = "Book was successfully created."
        redirect_to users_path
      
  end

  def update
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
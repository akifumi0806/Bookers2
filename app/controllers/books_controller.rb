class BooksController < ApplicationController
  before_action :correct_user, only: [:edit]

 

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @userbook = Book.find(params[:id])
    @book = Book.new
    @user = @userbook.user
    @favorite = Favorite.new
    @book_comment = BookComment.new
    @comments = @userbook.book_comments
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to users_path
  end

  def create
    @book = Book.new(book_params)
      @book.user_id = current_user.id
      if @book.save
        flash[:success] = 'You have creatad book successfully.'
        redirect_to book_path(@book.id)
      else
        @user = current_user
        @books = Book.all
        render :index
      end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "You have updated user successfully."
     redirect_to book_path
    else
      render :edit
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
   def correct_user
       book = Book.find(params[:id])
    if book.user != current_user
       redirect_to books_path
  end
end
end
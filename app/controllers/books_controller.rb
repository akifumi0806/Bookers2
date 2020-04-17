class BooksController < ApplicationController
  def index
    @book = Book.new
  end
  def show
  end

  def edit
    render 'mypage'
  end

  def destroy
  end
  
  def create
  end

  def update
  end
end
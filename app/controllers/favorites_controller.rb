class FavoritesController < ApplicationController

  def create
  	@userbook = Book.find(params[:book_id])
  	favorite = current_user.favorites.new(book_id: @userbook.id)
  	favorite.save
  	redirect_to request.referer
    end

  def destroy
  	@userbook = Book.find(params[:book_id])
  	favorite = current_user.favorites.find_by(book_id: @userbook.id)
  	favorite.destroy
  	redirect_to request.referer
  end

end

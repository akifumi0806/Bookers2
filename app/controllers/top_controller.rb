class TopController < ApplicationController
  def home
  	@books = Book.all
  end

  def about
  end
end

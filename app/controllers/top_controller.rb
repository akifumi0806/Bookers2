class TopController < ApplicationController
  def home
  	@books = Book.new
  end

  def about
  end
end

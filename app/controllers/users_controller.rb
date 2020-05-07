class UsersController < ApplicationController
	before_action :correct_user, only: [:edit]
	def index
		@users = User.all
		@book = Book.new
		@books = Book.all
		@user = current_user
	end

	def show
		@book = Book.new
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
	    if @user.update(user_params)
	    	flash[:notice] = "You have updated user successfully."
			redirect_to user_path
		else
			render :edit
		end
	end
private
    def user_params
    params.require(:user).permit(:name, :introduction, :image)
  	end
  	def correct_user
       user = User.find(params[:id])
    if user.id != current_user.id
    	redirect_to user_path(current_user)
	end
end
end

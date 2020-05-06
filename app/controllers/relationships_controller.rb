class RelationshipsController < ApplicationController
	def create
		user = User.find(params[:id])
		current_user.follow(params[:id])
		redirect_to user_path(user)
	end
	def destroy
		user = User.find(params[:id])
		current_user.unfollow(params[:id])
		redirect_to user_path(user)
	end
	def followers
		@user = User.find(params[:id])
		@users = @user.follower_user
	end
	def follows
		@user = User.find(params[:id])
		@users = @user.following_user
	end
end

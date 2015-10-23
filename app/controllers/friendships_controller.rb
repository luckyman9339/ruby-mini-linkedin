class FriendshipsController < ApplicationController

	def create 
		friendship = Friend.new(user_id: current_user.id, friend_id: params[:friend_id])
		friendship.save
		redirect_to "/profiles"
	end

	def destroy
		friendship = Friend.find(params[:id]).destroy
		redirect_to :back
	end
end

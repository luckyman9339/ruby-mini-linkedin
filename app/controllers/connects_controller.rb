class ConnectsController < ApplicationController

	def create
		connect = Connect.new(user_id: current_user.id, connect_id: params[:friend_id])
		connect.save
		friendship = Friend.find_by(friend_id: params[:friend_id]).destroy
		redirect_to :back
	end
end

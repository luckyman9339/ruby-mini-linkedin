class ProfilesController < ApplicationController

	def index
		@profile = User.find(session[:user_id])
		@friend = Friend.where(user_id: current_user.id)
		@connect = Connect.where(user_id: current_user.id)
	end
end

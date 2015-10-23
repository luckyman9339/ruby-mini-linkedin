class MainsController < ApplicationController

	def create
		user = User.new(user_params)

		if user.save
			session[:user_id] = user.id
			redirect_to "/profiles"
		else
			flash[:errors] = user.errors.full_messages
			redirect_to :back
		end
	end

	private
	def user_params
		params.require(:users).permit(:name, :email, :password, :password_confirmation, :description)
	end

end

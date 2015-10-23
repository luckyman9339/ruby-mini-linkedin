class SessionsController < ApplicationController

	def index

	end

	def create
		user = User.find_by(email: session_params[:email])
		if (user && user.authenticate(session_params[:password]))
			session[:user_id] = user.id
			redirect_to "/profiles"
		else
			flash[:session_errors] = "Invalid Creditials"
			redirect_to :back
		end
	end

	def destroy
		reset_session
		redirect_to :root
	end
	
	def session_params
		params.require(:sessions).permit(:email, :password)
	end
end

class SessionsController < ApplicationController
	def create
		user = User.from_omniauth(env["omniauth.auth"])
	    session[:user_id] = user.id
	    redirect_to root_path,notice:" #{user.name} you are logged in. Have a great Time at Ungli"
	end

	def destroy
	   @name = current_user.name
	   session[:user_id] = nil
	   redirect_to :back, notice:"#{@name} you are logged out. Thank you for Raising voice against corruption!"
	end
end

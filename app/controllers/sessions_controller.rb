class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authentication(params[:password])
			session[:user_id] = user.id
			redirect to '/'
		else
			redirect_to '/login'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/login'
	end

end

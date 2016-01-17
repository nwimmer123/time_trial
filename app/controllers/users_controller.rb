class UsersController < ApplicationController

	has_many :articles

	def new

	end

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
			redirect_to '/'
		else
			redirect_to '/signup'
		end
	end

private

	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password_digest)
	end

end

class UsersController < ApplicationController

	def new

	end

	def index
		@users = User.all
	end

	def show

	end

	def edit

	end

	def update

	end

	def destroy

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

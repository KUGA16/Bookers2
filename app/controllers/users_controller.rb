class UsersController < ApplicationController


	def new
	end

	def create
	end

	def show
		@book = Book.new
		@books = Book.all
		@user = User.find(params[:id])
		@users = current_user
	end

	def index
		@book = Book.new
		@books = Book.all
		@user = current_user
		@users = User.all
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user
		@user.update(user_params)
		flash[:notice] = 'You have updated user successfully.'
		redirect_to user_path(@user)
	end





	private
	def user_params
		params.require(:user).permit(:name, :introduction, :profile_image)
	end
end

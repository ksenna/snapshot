class UsersController < ApplicationController

	def index
		@users = User.all
		@photos = Photo.all
	end

	def new
		@new_user = User.new
	end

	def create
		@new_user = User.new(user_params)
		if @new_user.save
			redirect_to users_path
		else
			redirect_to new_user_path
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			redirect_to users_path
		else
			redirect_to user_path
		end
	end

	def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      "Error updating user"
    end
  end

	def search
		@users = User.search(params[:search])
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end

end

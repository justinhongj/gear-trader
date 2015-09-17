class UsersController < ApplicationController

	def index

	end

	def show
		@user = User.find(params[:id])
		@posts = Post.where(user_id: params[:id])
	end

	def new
    	@user = User.new
  	end

	def create

	  if User.create(user_params)
	    flash[:success] = 'Registration Successful'
	    redirect_to new_session_path
	  else

	    flash[:error] = 'Registration Failed'

	    redirect_to new_session_path

	  end
	end

	def edit
		@user = User.find(current_user)
	end

	def update
		@user = User.find(current_user)

		if @user.update_attributes(user_params)
			redirect_to profile_path
		else
			render :edit
		end
	end

	private

	def user_params
		params.require(:user).permit(:email,:password,:password_confirmation, :username, :address, :city, :state, :zipcode)
	end
end

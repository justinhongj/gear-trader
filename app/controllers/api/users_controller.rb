module API
	class UsersController < ApplicationController

		def index
			render json: User.all
		end

		def show
			render json: User.find(params[:id])
		end

		def create
			user = User.new(user_params)

			if user.save
				render json: user, status: 201, location: [:api, user]
			else
				render json: user.errors, status: 422
			end
		end

		def update
			user = User.find(params[:id])

			if user.update(user_params)
				head 204
			else
				render json: user.erros, status: 422
			end
		end

		def destroy
			user = User.find(params[:id])

			user.destroy
			head 204
		end

		private
		def user_params
			params.require(:user).permit(:email, :password, :username, :address, :city, :state, :zipcode)
		end
	end
end
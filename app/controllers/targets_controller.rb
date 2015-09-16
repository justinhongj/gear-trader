class TargetsController < ApplicationController

	before_action :authorize 

	def index
		@posts = Post.where(user_id: current_user.id)
		@watches = Watch.where(user_id: current_user.id)

	end
end
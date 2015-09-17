class WatchesController < ApplicationController 

	def create
		@watch = Watch.new(user_id: current_user.id, post_id: params[:post_id])

		if @watch.save
			redirect_to post_path(@watch.post_id)
		end
	end

	def destroy
		@watch = Watch.find(params[:id])
		@watch.destroy

		redirect_to profile_path
	end
end
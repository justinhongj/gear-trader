class TradesController < ApplicationController 

	def new
		@trade = Trade.new
		@post_id = params[:post_id]
	end	

	def create
		@trade = Trade.new(params.require(:trade).permit(:user_id, :post_id, :description, :condition))

		@watch = Watch.new(user_id: current_user.id, post_id: @trade.post_id)

		@watch.save

		if @trade.save
			redirect_to post_path(@trade.post_id)
		else
			redirect_to new_trade_path
		end
	end

	def update
		@trade = Trade.find(params[:id])

		if @trade.update_attributes(params.require(:trade).permit(:status))
			redirect_to profile_path
		else
			redirect_to profile_path
		end
	end

end
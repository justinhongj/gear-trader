class TradesController < ApplicationController 

	def new
		@trade = Trade.new
		@post_id = params[:post_id]
	end	

	def create
		@trade = Trade.new(params.require(:trade).permit(:user_id, :post_id, :description, :condition, :status))

		if @trade.save
			redirect_to post_path(@trade.post_id)
		else
			redirect_to new_trade_path
		end
	end

end
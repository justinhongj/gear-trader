class MessagesController < ApplicationController 

	def create
		@message = Message.new(params.require(:message).permit(:body, :user_id, :chat_id))

		@message.save

		redirect_to chat_path(Chat.find(@message.chat_id))
	end

end
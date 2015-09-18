class ChatsController < ApplicationController 

	def create
		@from = User.find(current_user.id)
		@to = User.find(params[:user_id])

		if UserChat.where(user_id: @from.id).first
			UserChat.where(user_id: @from.id).each  do |userchat|
				UserChat.where(chat_id: userchat.chat_id).each do |chat|
					if chat.user_id == @to.id
						redirect_to chat_path(chat.chat_id) and return
					end
				end
			end
			@new_chat = Chat.new
			@new_chat.save
			UserChat.new(chat_id: @new_chat.id, user_id: @from.id).save
			UserChat.new(chat_id: @new_chat.id, user_id: @to.id).save
			redirect_to chat_path(@new_chat.id) and return	
		else
			@new_chat = Chat.new
			@new_chat.save
			UserChat.new(chat_id: @new_chat.id, user_id: @from.id).save
			UserChat.new(chat_id: @new_chat.id, user_id: @to.id).save
			redirect_to chat_path(@new_chat.id)
		end


		# UserChat.where(user_id: @from.id).each  do |userchat|
		# 	UserChat.where(chat_id: userchat.chat_id).each do |chat|
		# 		if chat.user_id == @to.id
		# 			redirect_to chat_path(chat.chat_id)
		# 		else
		# 			new_chat = Chat.new
		# 			UserChat.new(chat_id: new_chat.id, user_id: @from.id)
		# 			UserChat.new(chat_id: new_chat.id, user_id: @to.id)
		# 			redirect_to chat_path(new_chat.id)
		# 		end
		# 	end
		# end
	end

	def show
		@from = User.find(current_user.id)

		if UserChat.where(chat_id: params[:id]).first.user_id == current_user.id
			@to = User.find(UserChat.where(chat_id: params[:id]).second.user_id)
		else
			@to = User.find(UserChat.where(chat_id: params[:id]).first.user_id)
		end

		@messages = Message.all
		@message = Message.new

		# @to = User.find_by(id: UserChat.where(chat_id: params[:id]).second.user_id)
	end

	def index
		@userchats = UserChat.where(user_id: current_user.id)
	end

end
























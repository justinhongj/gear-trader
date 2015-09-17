class RemoveUsersFromChats < ActiveRecord::Migration
  def change
    remove_column :chats, :user1, :string
    remove_column :chats, :user2, :string
  end
end

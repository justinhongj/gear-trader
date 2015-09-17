class RemoveFriendIdFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :friend_id, :string
  end
end

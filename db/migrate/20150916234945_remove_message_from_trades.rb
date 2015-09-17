class RemoveMessageFromTrades < ActiveRecord::Migration
  def change
    remove_column :trades, :message, :string
  end
end

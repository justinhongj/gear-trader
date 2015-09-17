class AddStatusToTrades < ActiveRecord::Migration
  def change
    add_column :trades, :status, :string
  end
end

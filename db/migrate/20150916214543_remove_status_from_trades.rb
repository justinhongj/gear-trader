class RemoveStatusFromTrades < ActiveRecord::Migration
  def change
    remove_column :trades, :status, :string
  end
end

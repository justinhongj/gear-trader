class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.string :description
      t.string :condition
      t.string :status

      t.timestamps null: false
    end
  end
end

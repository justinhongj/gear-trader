class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :condition
      t.string :wanted
      t.string :pictures
      t.string :status
      t.string :category

      t.timestamps null: false
    end
  end
end

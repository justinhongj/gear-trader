class AddPropertiesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipcode, :string
    add_column :users, :rating, :integer
  end
end

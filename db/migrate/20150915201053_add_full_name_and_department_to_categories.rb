class AddFullNameAndDepartmentToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :full_name, :string
    add_column :categories, :department, :string
  end
end

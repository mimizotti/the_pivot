class AddTitleToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :title, :string
  end
end

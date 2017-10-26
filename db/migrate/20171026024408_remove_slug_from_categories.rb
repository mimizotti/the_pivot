class RemoveSlugFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_index :categories, column: :slug
    remove_column :categories, :name
  end
end

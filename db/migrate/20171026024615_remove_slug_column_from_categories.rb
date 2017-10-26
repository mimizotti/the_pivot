class RemoveSlugColumnFromCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :slug
  end
end

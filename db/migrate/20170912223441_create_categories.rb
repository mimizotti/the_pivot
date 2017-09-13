class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :slug, null: false
    end

      add_index :categories, :slug, unique: true
  end
end

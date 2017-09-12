class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image, default: "https://i.pinimg.com/originals/45/d9/2e/45d92e009aefefb6303d8d8550e4a8eb.png"

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.decimal :total_price
      t.integer :status, default: 0

      t.timestamps
    end
  end
end

class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :confirmation_code, :string
  end
end

class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :role, :integer
    add_column :users, :name, :string
  end
end

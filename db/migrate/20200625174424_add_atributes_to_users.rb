class AddAtributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :ruc, :string
    add_column :users, :phone_number, :string
    add_column :users, :data, :date
  end
end

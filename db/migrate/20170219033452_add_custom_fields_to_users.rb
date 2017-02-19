class AddCustomFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :zipcode, :string
    add_column :users, :address_street, :string
    add_column :users, :address_number, :string
    add_column :users, :address_neighborhood, :string
    add_column :users, :address_city, :string
    add_column :users, :address_state, :string
  end
end

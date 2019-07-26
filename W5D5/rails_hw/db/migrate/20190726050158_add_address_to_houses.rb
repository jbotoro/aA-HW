class AddAddressToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :address, :integer, null: false
  end
end

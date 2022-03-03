class AddWebAddressToGarages < ActiveRecord::Migration[6.1]
  def change
    add_column :garages, :web_address, :string
  end
end

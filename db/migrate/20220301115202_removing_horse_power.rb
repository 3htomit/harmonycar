class RemovingHorsePower < ActiveRecord::Migration[6.1]
  def change
    remove_column :specifications, :horsepower
    add_column :specifications, :engine, :string
  end
end

class AddCylinderToSpecifications < ActiveRecord::Migration[6.1]
  def change
    add_column :specifications, :cylinder, :float
  end
end

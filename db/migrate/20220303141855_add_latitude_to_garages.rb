class AddLatitudeToGarages < ActiveRecord::Migration[6.1]
  def change
    add_column :garages, :latitude, :float
  end
end

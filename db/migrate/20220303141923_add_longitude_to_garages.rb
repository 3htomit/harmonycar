class AddLongitudeToGarages < ActiveRecord::Migration[6.1]
  def change
    add_column :garages, :longitude, :float
  end
end

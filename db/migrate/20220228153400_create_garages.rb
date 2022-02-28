class CreateGarages < ActiveRecord::Migration[6.1]
  def change
    create_table :garages do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.float :average_rating
      t.integer :review_count

      t.timestamps
    end
  end
end

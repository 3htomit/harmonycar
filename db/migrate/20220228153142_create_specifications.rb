class CreateSpecifications < ActiveRecord::Migration[6.1]
  def change
    create_table :specifications do |t|
      t.string :make
      t.string :model
      t.string :fuel
      t.integer :critair
      t.integer :horsepower
      t.string :transmission
      t.date :start_year
      t.date :end_year

      t.timestamps
    end
  end
end

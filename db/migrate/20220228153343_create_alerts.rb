class CreateAlerts < ActiveRecord::Migration[6.1]
  def change
    create_table :alerts do |t|
      t.references :car, null: false, foreign_key: true
      t.references :alert_category, null: false, foreign_key: true
      t.date :due_date
      t.integer :due_km
      t.boolean :completed
      t.date :completed_at

      t.timestamps
    end
  end
end

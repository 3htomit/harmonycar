class CreateAlertCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :alert_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

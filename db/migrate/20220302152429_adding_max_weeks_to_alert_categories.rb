class AddingMaxWeeksToAlertCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :alert_categories, :max_weeks, :integer, default: 0
  end
end

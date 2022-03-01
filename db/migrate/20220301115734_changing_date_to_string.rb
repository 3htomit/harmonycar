class ChangingDateToString < ActiveRecord::Migration[6.1]
  def change
    change_column :specifications, :start_year, :string
    change_column :specifications, :end_year, :string
  end
end

class AddDateToFlights < ActiveRecord::Migration[6.0]
  def change
    add_column :flights, :date, :date
  end
end

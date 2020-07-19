class ChangePassengerNameInFlights < ActiveRecord::Migration[6.0]
  def up
    rename_column :flights, :passenger_count, :open_seats
  end

  def down
    rename_column :flights, :open_seats, :passenger_count
  end
end

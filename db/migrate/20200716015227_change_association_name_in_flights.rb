class ChangeAssociationNameInFlights < ActiveRecord::Migration[6.0]
  def up
    rename_column :flights, :to_airport, :to_airport_id
    rename_column :flights, :from_airport, :from_airport_id
  end

  def down
    rename_column :flights, :to_airport_id, :to_airport
    rename_column :flights, :from_airport_id, :from_airport
  end
end

class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.time :duration
      t.datetime :start
      t.integer :from_airport
      t.integer :to_airport

      t.timestamps
    end
  end
end

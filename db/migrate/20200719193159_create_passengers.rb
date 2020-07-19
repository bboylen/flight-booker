class CreatePassengers < ActiveRecord::Migration[6.0]
  def change
    create_table :passengers do |t|
      t.integer :booking_id
      t.string :email
      t.string :name
      
      t.timestamps
    end
  end
end

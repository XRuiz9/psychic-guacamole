class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.integer :rider_id
      t.integer :rollercoaster_id

      t.timestamps
    end
  end
end

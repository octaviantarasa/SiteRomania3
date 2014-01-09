class CreateRateLocations < ActiveRecord::Migration
  def change
    create_table :rate_locations do |t|
      t.integer :note
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end

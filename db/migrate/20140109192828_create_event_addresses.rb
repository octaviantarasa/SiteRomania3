class CreateEventAddresses < ActiveRecord::Migration
  def change
    create_table :event_addresses do |t|
      t.string :city
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :location_id

      t.timestamps
    end
  end
end

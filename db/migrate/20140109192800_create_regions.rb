class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title
      t.integer :location_id

      t.timestamps
    end
  end
end

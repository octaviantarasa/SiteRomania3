class CreateTopDestinations < ActiveRecord::Migration
  def change
    create_table :top_destinations do |t|
      t.float :latitude
      t.float :longitude
      t.string :title
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end

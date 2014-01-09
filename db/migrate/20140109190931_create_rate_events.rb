class CreateRateEvents < ActiveRecord::Migration
  def change
    create_table :rate_events do |t|
      t.integer :note
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end

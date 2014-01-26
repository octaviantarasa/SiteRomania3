class CreateEventComments < ActiveRecord::Migration
  def change
    create_table :event_comments do |t|
      t.integer :user_id
      t.integer :event_id
      t.text :comment_text

      t.timestamps
    end
  end
end

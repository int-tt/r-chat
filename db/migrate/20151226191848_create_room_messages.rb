class CreateRoomMessages < ActiveRecord::Migration
  def change
    create_table :room_messages do |t|
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

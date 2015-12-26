class CreateRoomMembers < ActiveRecord::Migration
  def change
    create_table :room_members do |t|
      t.integer :room_id
      t.integer :from_user_id
      t.string  :message

      t.timestamps null: false
    end
  end
end

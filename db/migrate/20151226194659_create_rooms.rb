class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string   :room_name
      t.integer  :created_user_id

      t.timestamps null: false
    end
  end
end

class RenameColumnRoomMembers < ActiveRecord::Migration
  def change
    rename_column :room_members, :from_user_id, :user_id
  end
end

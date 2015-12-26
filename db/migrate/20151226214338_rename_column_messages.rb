class RenameColumnMessages < ActiveRecord::Migration
  def change
    rename_column :messages, :from_user_id, :user_id
  end
end

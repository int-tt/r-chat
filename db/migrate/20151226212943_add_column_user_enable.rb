class AddColumnUserEnable < ActiveRecord::Migration
  def change
    add_column :users, :enable, :boolean, null: false, default: false
  end
end

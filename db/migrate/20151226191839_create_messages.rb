class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :to_user_id
      t.integer :user_id
      t.string  :message

      t.timestamps null: false
    end
  end
end

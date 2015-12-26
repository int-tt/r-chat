class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :to_user_id
      t.integer :from_user_id
      t.string :message


      t.timestamps null: false
    end
  end
end

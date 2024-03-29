class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name,            null: false
      t.string  :email,           null: false
      t.string  :password_digest, null: false
      t.boolean :admin,           null: false, default: false
      t.string  :remember_digest
      t.boolean :enable,          default: false, null: false

      t.timestamps null: false
    end
  end
end

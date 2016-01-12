class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 20
      t.string :password_hash, null: false, minimum: 8

      t.timestamps
    end
  end
end

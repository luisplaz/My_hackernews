class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user_id, null: false, index: true
      t.string :title, null: false, limit: 20
      t.string :body, null: false, limit: 200
      t.string :url, null: false, limit: 100
      t.date :day_created

      t.timestamps
    end
  end
end

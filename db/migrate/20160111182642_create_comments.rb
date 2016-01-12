class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_id, null: false, index: true
      t.string :post_id, null: false, index: true
      t.string :body, null: false, limit: 200

      t.timestamps
    end
  end
end

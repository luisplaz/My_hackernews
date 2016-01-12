class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.string :user_id, null: false, index: true
      t.string :post_id, null: false, index: true

      t.timestamps
    end
  end
end

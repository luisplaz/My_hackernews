class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.string :user_id, null: false, index: true
      t.string :comment_id, null: false, index: true

      t.timestamps
    end
  end
end

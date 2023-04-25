class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :repository_id
      t.text :body
      t.integer :upvotes
      t.integer :downvotes
      t.datetime :d_at

      t.timestamps
    end
  end
end

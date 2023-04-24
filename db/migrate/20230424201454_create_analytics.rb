class CreateAnalytics < ActiveRecord::Migration[7.0]
  def change
    create_table :analytics do |t|
      t.integer :user_id
      t.integer :repository_id
      t.integer :search_id
      t.integer :tag_id
      t.integer :view_id
      t.integer :rating_id
      t.integer :comment_id
      t.integer :activity_log_id

      t.timestamps
    end
  end
end

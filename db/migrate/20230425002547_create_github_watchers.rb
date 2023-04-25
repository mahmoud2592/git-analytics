class CreateGithubWatchers < ActiveRecord::Migration[7.0]
  def change
    create_table :github_watchers do |t|
      t.integer :watcher_id
      t.integer :repository_id, null: false
      t.integer :user_id

      t.timestamps
    end
  end
end

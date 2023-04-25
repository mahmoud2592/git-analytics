class CreateGithubCommits < ActiveRecord::Migration[7.0]
  def change
    create_table :github_commits do |t|
      t.integer :commit_id
      t.string :commit_message
      t.string :author
      t.datetime :timestamp
      t.string :url
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

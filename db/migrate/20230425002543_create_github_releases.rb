class CreateGithubReleases < ActiveRecord::Migration[7.0]
  def change
    create_table :github_releases do |t|
      t.integer :release_id
      t.string :tag_name, null: false
      t.string :target_commitish, null: false
      t.string :name
      t.string :body
      t.string :url, null: false
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

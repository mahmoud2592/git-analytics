class CreateGithubPullRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :github_pull_requests do |t|
      t.integer :pull_request_id
      t.string :title, null: false
      t.string :description
      t.string :author
      t.string :assignee
      t.string :status, null: false
      t.string :labels
      t.datetime :timestamp, null: false
      t.string :url, null: false
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

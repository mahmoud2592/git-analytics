class CreateGithubBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :github_branches do |t|
      t.integer :branch_id
      t.string :name, null: false
      t.string :last_commit, null: false
      t.string :url, null: false
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

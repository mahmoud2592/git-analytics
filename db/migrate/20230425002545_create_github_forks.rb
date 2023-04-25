class CreateGithubForks < ActiveRecord::Migration[7.0]
  def change
    create_table :github_forks do |t|
      t.integer :fork_id
      t.integer :forked_from_repository_id, null: false
      t.integer :forked_to_repository_id, null: false

      t.timestamps
    end
  end
end

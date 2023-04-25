class CreateGithubCollaborators < ActiveRecord::Migration[7.0]
  def change
    create_table :github_collaborators do |t|
      t.integer :collaborator_id
      t.string :username, null: false
      t.string :permission
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

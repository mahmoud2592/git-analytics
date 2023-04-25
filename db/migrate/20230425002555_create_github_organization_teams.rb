class CreateGithubOrganizationTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :github_organization_teams do |t|
      t.integer :team_id
      t.string :name, null: false
      t.string :description
      t.string :permission
      t.string :url, null: false
      t.integer :organization_id, null: false

      t.timestamps
    end
  end
end

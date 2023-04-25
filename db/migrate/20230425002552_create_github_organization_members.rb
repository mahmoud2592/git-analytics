class CreateGithubOrganizationMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :github_organization_members do |t|
      t.integer :member_id
      t.integer :organization_id, null: false
      t.string :username, null: false
      t.string :url

      t.timestamps
    end
  end
end

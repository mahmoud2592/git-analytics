class CreateGithubOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :github_organizations do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :url, null: false
      t.integer :github_id, null: false
      t.string :avatar_url, null: false
      t.string :html_url, null: false
      t.integer :public_repos, null: false
      t.integer :public_gists, null: false
      t.integer :followers, null: false
      t.integer :following, null: false

      t.timestamps
    end
  end
end

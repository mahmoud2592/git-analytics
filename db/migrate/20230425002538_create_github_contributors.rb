class CreateGithubContributors < ActiveRecord::Migration[7.0]
  def change
    create_table :github_contributors do |t|
      t.integer :contributor_id
      t.string :username, null: false
      t.string :profile_link, null: false
      t.integer :number_of_contributions
      t.string :url, null: false
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

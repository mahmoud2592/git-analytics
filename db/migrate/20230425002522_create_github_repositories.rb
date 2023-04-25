class CreateGithubRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :github_repositories do |t|
      t.string :name, null: false
      t.string :description
      t.string :language
      t.integer :stars, null: false
      t.integer :forks, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end

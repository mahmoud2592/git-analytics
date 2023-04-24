class CreateRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories do |t|
      t.string :name
      t.text :description
      t.string :programming_language
      t.string :license
      t.string :url
      t.string :default_branch
      t.integer :stars_count
      t.integer :forks_count
      t.integer :watchers_count
      t.integer :issues_count
      t.integer :pull_requests_count
      t.integer :commit_count

      t.timestamps
    end
  end
end

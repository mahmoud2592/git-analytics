class CreateGithubMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :github_milestones do |t|
      t.integer :milestone_id
      t.string :title, null: false
      t.string :description, null: false
      t.datetime :due_date
      t.string :status, null: false
      t.string :url, null: false
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

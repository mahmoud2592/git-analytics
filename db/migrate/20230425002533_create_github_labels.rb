class CreateGithubLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :github_labels do |t|
      t.integer :label_id
      t.string :name, null: false
      t.string :color, null: false
      t.string :description
      t.string :url, null: false
      t.integer :repository_id, null: false

      t.timestamps
    end
  end
end

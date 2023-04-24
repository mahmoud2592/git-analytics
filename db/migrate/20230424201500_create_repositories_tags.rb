class CreateRepositoriesTags < ActiveRecord::Migration[7.0]
  def change
    create_table :repositories_tags do |t|
      t.integer :repository_id
      t.integer :tag_id

      t.timestamps
    end
  end
end

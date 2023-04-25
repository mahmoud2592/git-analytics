class CreateCommits < ActiveRecord::Migration[7.0]
  def change
    create_table :commits do |t|
      t.string :sha
      t.string :author_name
      t.string :author_email
      t.text :message
      t.datetime :committed_date
      t.integer :repository_id
      t.datetime :day
      t.datetime :week
      t.datetime :month

      t.timestamps
    end
  end
end

class CreateUsersRepositories < ActiveRecord::Migration[7.0]
  def change
    create_table :users_repositories do |t|
      t.integer :user_id
      t.integer :repository_id
      t.date :date_added
      t.date :last_viewed

      t.timestamps
    end
  end
end

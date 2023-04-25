class CreateGithubUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :github_users do |t|
      t.integer :user_id
      t.string :username, null: false
      t.string :name
      t.string :email
      t.string :location
      t.string :bio
      t.string :url

      t.timestamps
    end
  end
end

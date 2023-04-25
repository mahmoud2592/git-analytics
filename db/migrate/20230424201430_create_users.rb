class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :profile_picture
      t.text :bio
      t.string :location
      t.string :twitter_url
      t.string :facebook_url
      t.string :linkedin_url
      t.string :github_url
      t.string :website_url
      t.integer :role
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

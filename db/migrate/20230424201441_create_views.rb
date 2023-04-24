class CreateViews < ActiveRecord::Migration[7.0]
  def change
    create_table :views do |t|
      t.integer :user_id
      t.integer :repository_id
      t.string :ip_address
      t.string :device
      t.integer :duration

      t.timestamps
    end
  end
end

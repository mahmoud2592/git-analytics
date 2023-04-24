class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :query
      t.text :filters
      t.integer :result_count
      t.integer :user_id

      t.timestamps
    end
  end
end

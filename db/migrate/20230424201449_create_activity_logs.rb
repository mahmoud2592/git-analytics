class CreateActivityLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_logs do |t|
      t.integer :user_id
      t.string :action
      t.integer :record_id
      t.string :record_type
      t.datetime :d_at

      t.timestamps
    end
  end
end

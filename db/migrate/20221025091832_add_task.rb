class AddTask < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :name
      t.datetime :plan_date
      t.integer :is_completed, limit: 1
      t.text :memo
      t.timestamps
    end
  end
end

class AddTask < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :name
      t.datetime :plan_id
      t.integer :is_comleted, limit: 1
      t.text :memo
      t.timestamps
    end
  end
end

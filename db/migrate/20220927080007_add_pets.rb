class AddPets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.integer :user_id
      t.string :name
      t.integer :pet_type_id
      t.integer :gender
      t.datetime :birthday
      t.text :memo
      t.timestamps
    end
  end
end

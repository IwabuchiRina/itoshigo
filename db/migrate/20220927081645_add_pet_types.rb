class AddPetTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_types do |t|
      t.string :name
      t.integer :category_id
      t.timestamps
    end
  end
end

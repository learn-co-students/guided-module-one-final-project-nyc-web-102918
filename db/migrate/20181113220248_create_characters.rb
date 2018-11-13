class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.boolean :alive
      t.string :species
      t.string :gender
    end 
  end
end

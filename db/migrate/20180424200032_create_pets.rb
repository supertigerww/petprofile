class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.string :gender
      t.date :birthdate
      t.string :description
      t.references :food, index: true, foreign_key: true
      t.references :toy, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

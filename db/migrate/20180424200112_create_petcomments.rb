class CreatePetcomments < ActiveRecord::Migration
  def change
    create_table :petcomments do |t|
      t.string :content
      t.references :pet, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

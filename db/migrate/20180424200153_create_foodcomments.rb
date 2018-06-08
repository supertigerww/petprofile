class CreateFoodcomments < ActiveRecord::Migration
  def change
    create_table :foodcomments do |t|
      t.string :content
      t.references :food, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

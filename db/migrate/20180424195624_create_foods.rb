class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.string :link
      t.string :type

      t.timestamps null: false
    end
  end
end

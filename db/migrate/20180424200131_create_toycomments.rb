class CreateToycomments < ActiveRecord::Migration
  def change
    create_table :toycomments do |t|
      t.string :content
      t.references :toy, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.references :ingredients, index: true, foreign_key: true
      t.text :instructions
      t.integer :rating

      t.timestamps null: false
    end
  end
end

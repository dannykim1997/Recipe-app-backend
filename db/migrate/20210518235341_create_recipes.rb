class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :origin
      t.text :instructions
      t.string :ingredients
      t.string :measurements
      t.string :image
      t.timestamps
    end
  end
end

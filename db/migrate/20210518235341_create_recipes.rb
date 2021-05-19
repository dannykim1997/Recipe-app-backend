class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :origin
      t.text :instructions
      t.string :ingredients, array: true
      t.string :measurements, array: true
      t.timestamps
    end
  end
end

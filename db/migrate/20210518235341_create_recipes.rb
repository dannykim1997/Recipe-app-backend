class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :origin
      t.text :instructions
      t.string :ingredient1
      t.string :ingredient2
      t.string :ingredient3
      t.string :ingredient4
      t.string :ingredient5
      t.string :ingredient6
      t.string :ingredient7
      t.string :ingredient8
      t.string :ingredient9
      t.string :ingredient10
      t.string :ingredient11
      t.string :ingredient12
      t.string :ingredient13
      t.string :ingredient14
      t.string :ingredient15
      t.string :ingredient16
      t.string :ingredient17
      t.string :ingredient18
      t.string :ingredient19
      t.string :ingredient20
      t.string :measurement1
      t.string :measurement2
      t.string :measurement3
      t.string :measurement4
      t.string :measurement5
      t.string :measurement6
      t.string :measurement7
      t.string :measurement8
      t.string :measurement9
      t.string :measurement10
      t.string :measurement11
      t.string :measurement12
      t.string :measurement13
      t.string :measurement14
      t.string :measurement15
      t.string :measurement16
      t.string :measurement17
      t.string :measurement18
      t.string :measurement19
      t.string :measurement20
      t.string :image
      t.timestamps
    end
  end
end

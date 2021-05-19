class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :comment
      t.references :user
      t.references :recipe
      t.timestamps
    end
  end
end

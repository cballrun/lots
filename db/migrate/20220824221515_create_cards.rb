class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :value
      t.boolean :holo
      t.text :rarity_symbol
      t.text :condition
      t.boolean :english
      t.boolean :first_edition
      t.timestamps
    end
  end
end

class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.string :name
      t.integer :total_cards
      t.boolean :original_150
      t.integer :release_year
      t.timestamps
    end
  end
end

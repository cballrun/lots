class AddLotToCards < ActiveRecord::Migration[5.2]
  def change
    add_reference :cards, :lot, foreign_key: true
  end
end

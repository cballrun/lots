class Card < ApplicationRecord
  belongs_to :lot

  def self.abc_order
    order(:name)
  end

end
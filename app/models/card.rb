class Card < ApplicationRecord
  belongs_to :lot

  def self.abc_order
    order(:name)
  end

  def self.value_cutoff(given_value)
    self.where("value > #{given_value}")
  end

end
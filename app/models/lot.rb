class Lot < ApplicationRecord
  has_many :cards

  def self.most_recent
    self.order(created_at: :asc)
  end 

end
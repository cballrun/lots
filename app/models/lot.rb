class Lot < ApplicationRecord
  has_many :cards

  def self.most_recent
    order(created_at: :asc)
  end 

end
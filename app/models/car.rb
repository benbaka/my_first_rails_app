class Car < ApplicationRecord
  validates_presence_of :make, :model, :year
  validates_numericality_of :year
  has_many :bids

  def total_bids
    self.bids.sum(&:amount)
  end
end

class Car < ApplicationRecord
  has_many :bids

  def total_bids
    return self.bids.sum(&:amount)
  end
end

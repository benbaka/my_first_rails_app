class Bid < ApplicationRecord
  validates :amount, numericality: {greater_than_or_equal_to: 1}
  belongs_to :car
end

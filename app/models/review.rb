class Review < ApplicationRecord
  belongs_to :client
  belongs_to :stylist
  validates :rating, inclusion: { within: 1...5}, presence: true
  validates :description , presence: true , length: { minimum: 10 }
end

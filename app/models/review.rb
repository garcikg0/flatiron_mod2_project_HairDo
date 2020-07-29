class Review < ApplicationRecord
  belongs_to :client
  belongs_to :stylist
  validates :rating , presence: true , inclusion: { within: 0...6 }
  validates :description , presence: true , length: { minimum: 10 }
end

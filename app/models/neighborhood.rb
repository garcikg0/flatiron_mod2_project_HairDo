class Neighborhood < ApplicationRecord
  belongs_to :city
  has_many :stylists, through: :city
end

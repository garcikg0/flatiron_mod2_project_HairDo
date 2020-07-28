class City < ApplicationRecord
  has_many :stylists
  has_many :neighborhoods
end

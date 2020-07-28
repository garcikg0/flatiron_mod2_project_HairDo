class Neighborhood < ApplicationRecord
    has_many :cities
    has_many :stylists, through: :cities
end

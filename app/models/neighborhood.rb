class Neighborhood < ApplicationRecord
  belongs_to :city
  delegate :stylist, :to => :city
end

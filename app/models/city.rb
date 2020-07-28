class City < ApplicationRecord
  belongs_to :stylist
  belongs_to :neighborhood
end

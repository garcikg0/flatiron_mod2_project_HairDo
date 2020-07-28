class Review < ApplicationRecord
  belongs_to :client
  belongs_to :stylist
end

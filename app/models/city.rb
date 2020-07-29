class City < ApplicationRecord
  has_many :stylists
  has_many :neighborhoods
  validates :appt , presence: true
  validates :client_id , presence: true
  validates :stylist_id , presence: true
  validates :city_id , presence: true
  validates :neighborhood_id , presence: true
end

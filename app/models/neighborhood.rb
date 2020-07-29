class Neighborhood < ApplicationRecord
  belongs_to :city
  delegate :stylist, :to => :city
  # has_many :stylists, through: :city

  # attr_reader :name 
end

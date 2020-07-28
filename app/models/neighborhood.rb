class Neighborhood < ApplicationRecord
  belongs_to :city
<<<<<<< HEAD
  has_many :stylists, through: :city
=======
  delegate :stylist, :to => :city
>>>>>>> b05c39971c6a1ec7b1a3e1952da17e49b52fa40e
end

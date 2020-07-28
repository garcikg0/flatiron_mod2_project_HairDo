class Stylist < ApplicationRecord
  has_many :reviews
  has_many :clients, through: :reviews
  has_many :appointments
  has_many :clients, through: :appointments
  has_many :posts
  belongs_to :city
<<<<<<< HEAD
  has_many :neighborhoods, through: :city
=======
  delegate :neighborhood, :to => :city
>>>>>>> b05c39971c6a1ec7b1a3e1952da17e49b52fa40e
end

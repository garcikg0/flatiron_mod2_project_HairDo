class Stylist < ApplicationRecord
  has_many :reviews
  has_many :clients, through: :reviews
  has_many :appointments
  has_many :clients, through: :appointments
  has_many :posts
  belongs_to :city
  delegate :neighborhood, :to => :city
  # has_many :neighborhoods, through: :city
end

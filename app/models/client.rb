class Client < ApplicationRecord
  has_many :reviews
  has_many :clients, through: :reviews
  has_many :appointments
  has_many :clients, through: :appointments
end

class Client < ApplicationRecord
  has_many :reviews
  has_many :clients, through: :reviews
  has_many :appointments
  has_many :clients, through: :appointments
  validates :name , presence: true , length: { minimum: 2 }
  validates :age , presence: true , numericality: {greater_than: 3 } 

end

class Client < ApplicationRecord
    has_many :reviews
    has_many :stylists, through: :reviews
    has_many :appointments
    has_many :stylists, through: :appointments

end

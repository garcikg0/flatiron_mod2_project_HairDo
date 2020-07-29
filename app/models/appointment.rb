class Appointment < ApplicationRecord
  belongs_to :client
  belongs_to :stylist
  validates :appt, presence: true
  validates :client_id, presence: true
  validates :stylist_id, presence: true
  validates :neighborhood_id, presence: true
end

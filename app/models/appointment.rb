class Appointment < ApplicationRecord
  belongs_to :client
  has_one :invoice
end

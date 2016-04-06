class Appointment < ApplicationRecord
  belongs_to :client
  has_one :invoice

  scope :for_user, lambda { |user| joins(:user).where("user_id = ?", user.id)}
end

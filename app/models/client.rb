class Client < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy

  scope :for_user, lambda { |user| joins(:user).where("user_id = ?", user.id)}
end

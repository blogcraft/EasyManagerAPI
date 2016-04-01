class Client < ApplicationRecord
  belongs_to :user
  has_many :jobs, dependent: :destroy
  has_many :appointments, dependent: :destroy

  scope :for_user, lambda { |user| joins(:user).where("user_id = ?", user.id)}
end

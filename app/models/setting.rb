class Setting < ApplicationRecord
  belongs_to :user

  scope :for_user, lambda { |user| joins(:user).where("user_id = ?", user.id)}
end

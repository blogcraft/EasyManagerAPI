class Invoice < ApplicationRecord
  attribute :paid, :string

  belongs_to :appointment, -> {includes :client}
  belongs_to :service

  scope :for_user, lambda { |user| joins(:service).where("services.user_id = ?", user.id)}
end

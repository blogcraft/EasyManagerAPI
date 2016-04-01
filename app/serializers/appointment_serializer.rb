class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :confirm, :assist
  has_one :client
end

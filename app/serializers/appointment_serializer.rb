class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :confirm, :assist
  attribute :client_id, key: "client_id"
  attribute :client
end

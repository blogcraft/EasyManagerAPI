class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :confirm, :assist, :time, :note, :address
  attribute :client_id, key: "client_id"
  attribute :client
end

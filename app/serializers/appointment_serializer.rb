class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :confirm, :assist, :note, :address, :datetime
  attribute :client_id, key: "client_id"

  belongs_to :client
end

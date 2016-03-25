class ClientSerializer < ActiveModel::Serializer
  attributes :id, :phone, :email
  attribute :first_name, key: "first_name"
  attribute :last_name, key: "last_name"
end

class ClientSerializer < ActiveModel::Serializer
  attributes :id, :phone, :email
  attribute :first_name, key: :firstname
  attribute :last_name, key: :lastname
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profession
  attribute :name, key: "first_name"
  attribute :last_name, key: "last_name"

end

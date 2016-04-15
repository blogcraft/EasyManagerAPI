class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profession, :last_name
  attribute :name, key: :first_name

end

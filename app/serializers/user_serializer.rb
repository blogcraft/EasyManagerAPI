class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profession, :last_name, :first_name

end

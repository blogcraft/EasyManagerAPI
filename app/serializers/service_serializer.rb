class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :description, :amount, :taxable
  has_one :user
end
